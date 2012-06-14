
class HideoutsController < ApplicationController
  # GET /hideouts
  # GET /hideouts.json
  def index
    @hideouts = Hideout.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hideouts }
    end
  end

  # GET /hideouts/1
  # GET /hideouts/1.json
  def show
    @hideout = Hideout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hideout }
    end
  end

  # GET /hideouts/new
  # GET /hideouts/new.json
  def new
    @hideout = Hideout.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hideout }
    end
  end

  # GET /hideouts/1/edit
  def edit
    @hideout = Hideout.find(params[:id])
  end

  # POST /hideouts
  # POST /hideouts.json
  def create
    @hideout = Hideout.new(params[:hideout])

    respond_to do |format|
      if @hideout.save
        format.html { redirect_to @hideout, notice: 'Hideout was successfully created.' }
        format.json { render json: @hideout, status: :created, location: @hideout }
      else
        format.html { render action: "new" }
        format.json { render json: @hideout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hideouts/1
  # PUT /hideouts/1.json
  def update
    @hideout = Hideout.find(params[:id])

    respond_to do |format|
      if @hideout.update_attributes(params[:hideout])
        format.html { redirect_to @hideout, notice: 'Hideout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hideout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hideouts/1
  # DELETE /hideouts/1.json
  def destroy
    @hideout = Hideout.find(params[:id])
    @hideout.destroy

    respond_to do |format|
      format.html { redirect_to hideouts_url }
      format.json { head :no_content }
    end
  end
end
