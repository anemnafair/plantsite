class MyplantsController < ApplicationController
  before_action :set_myplant, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  respond_to :html

  def index
    @myplants = Myplant.all
    respond_with(@myplants)
  end

  def show
    respond_with(@myplant)
  end

  def new
    @myplant = current_user.myplants.build
    respond_with(@myplant)
  end

  def edit
  end

  def create
    @myplant = current_user.myplants.build(myplant_params)
    if @myplant.save
      redirect_to @myplant, notice: 'Your plant list was successfully created.'
    else
      render :new
    end
  end

  def update
    if @myplant.update(myplant_params)
      redirect_to @myplant, notice: 'Your plant list was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @myplant.destroy
    redirect_to myplant_url
  end

  private
    def set_myplant
      @myplant = Myplant.find(params[:id])
    end

    def correct_user
      @myplant = current_user.myplants.find_by(id: params[:id])
      redirect_to myplants_path, notice: "Not authorized to edit this plant list." if @myplant.nil?
    end

    def myplant_params
      params.require(:myplant).permit(:description, :image)
    end
end
