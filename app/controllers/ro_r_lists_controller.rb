class RoRListsController < ApplicationController
  before_action :set_ro_r_list, only: [:show, :edit, :update, :destroy]

  # GET /ro_r_lists
  # GET /ro_r_lists.json
  def index
    @ro_r_lists = RoRList.all
  end

  # GET /ro_r_lists/1
  # GET /ro_r_lists/1.json
  def show
  end

  # GET /ro_r_lists/new
  def new
    @ro_r_list = RoRList.new
  end

  # GET /ro_r_lists/1/edit
  def edit
  end

  # POST /ro_r_lists
  # POST /ro_r_lists.json
  def create
    @ro_r_list = RoRList.new(ro_r_list_params)

    respond_to do |format|
      if @ro_r_list.save
        format.html { redirect_to @ro_r_list, notice: 'Ro r list was successfully created.' }
        format.json { render :show, status: :created, location: @ro_r_list }
      else
        format.html { render :new }
        format.json { render json: @ro_r_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ro_r_lists/1
  # PATCH/PUT /ro_r_lists/1.json
  def update
    respond_to do |format|
      if @ro_r_list.update(ro_r_list_params)
        format.html { redirect_to @ro_r_list, notice: 'Ro r list was successfully updated.' }
        format.json { render :show, status: :ok, location: @ro_r_list }
      else
        format.html { render :edit }
        format.json { render json: @ro_r_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ro_r_lists/1
  # DELETE /ro_r_lists/1.json
  def destroy
    @ro_r_list.destroy
    respond_to do |format|
      format.html { redirect_to ro_r_lists_url, notice: 'Ro r list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ro_r_list
      @ro_r_list = RoRList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ro_r_list_params
      params.require(:ro_r_list).permit(:title, :description)
    end
end
