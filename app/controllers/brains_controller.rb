class BrainsController < ApplicationController
  def index
    @brains = Brain.find_by_index '$bucket', '_'
  end
  
  def show
    @brain = Brain.find params[:id]
  end
end
