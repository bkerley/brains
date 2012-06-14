class Brain
  include Ripple::Document
  property :owner_key, String, presence: true, index: true
  property :zombie_key, String, index: true
  property :hideout_id, Integer
  property :eaten_at, Time
  
  one :owner, using: :stored_key
  one :zombie, using: :stored_key
  
  index :zombie_hideout, String do
    "#{zombie_key}-#{hideout_id}"
  end
  
  index :zombie_eaten, String do
    "#{zombie_key}-#{"%020d" % eaten_at.to_i}"
  end
  
  index :hideout_eaten, String do
    "#{hideout_id}-#{"%020d" % eaten_at.to_i}"
  end
  
  def hideout
    Hideout.find hideout_id
  end
  
  def hideout=(hideout)
    self.hideout_id = hideout.id
  end
end

