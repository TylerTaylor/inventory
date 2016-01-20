class PartsController < ApplicationController
  before_action :find_part, only: [:show, :edit, :update, :destroy]
  
  def index
    @parts = Part.all.order("created_at DESC")
  end

  def show
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @part.update(part_params)
      redirect_to part_path(@part)
    else
      render 'edit'
    end
  end

  def destroy
    @part.destroy
    redirect_to root_path
  end

  private

    def part_params
      params.require(:part).permit(:title, :description)
    end

    def find_part
      @part = Part.find(params[:id])
    end

end
