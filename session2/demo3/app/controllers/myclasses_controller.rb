class MyclassesController < ApplicationController
  # GET /myclasses
  # GET /myclasses.json
  def index
    @myclasses = Myclass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @myclasses }
    end
  end

  # GET /myclasses/1
  # GET /myclasses/1.json
  def show
    @myclass = Myclass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @myclass }
    end
  end

  # GET /myclasses/new
  # GET /myclasses/new.json
  def new
    @myclass = Myclass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @myclass }
    end
  end

  # GET /myclasses/1/edit
  def edit
    @myclass = Myclass.find(params[:id])
  end

  # POST /myclasses
  # POST /myclasses.json
  def create
    @myclass = Myclass.new(params[:myclass])

    respond_to do |format|
      if @myclass.save
        format.html { redirect_to @myclass, notice: 'Myclass was successfully created.' }
        format.json { render json: @myclass, status: :created, location: @myclass }
      else
        format.html { render action: "new" }
        format.json { render json: @myclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /myclasses/1
  # PUT /myclasses/1.json
  def update
    @myclass = Myclass.find(params[:id])

    respond_to do |format|
      if @myclass.update_attributes(params[:myclass])
        format.html { redirect_to @myclass, notice: 'Myclass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @myclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myclasses/1
  # DELETE /myclasses/1.json
  def destroy
    @myclass = Myclass.find(params[:id])
    @myclass.destroy

    respond_to do |format|
      format.html { redirect_to myclasses_url }
      format.json { head :no_content }
    end
  end
end
