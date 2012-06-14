class CreateHideouts < ActiveRecord::Migration
  def change
    create_table :hideouts do |t|
      t.string :name

      t.timestamps
    end
  end
end
