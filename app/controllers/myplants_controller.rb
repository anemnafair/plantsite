class MyplantsController < ApplicationController
  before_action :set_myplant, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @myplants = Myplant.all
    respond_with(@myplants)
  end

  def show
    respond_with(@myplant)
  end

  def new
    @myplant = Myplant.new
    respond_with(@myplant)
  end

  def edit
  end

  def create
    @myplant = Myplant.new(myplant_params)
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

    def myplant_params
      params.require(:myplant).permit(:description)
    end
end
