class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def create
    @kitten = Kitten.new(kitty_params)
    if @kitten.save
      flash[:success] = 'Kitten Successfully Created.'
      redirect_to @kitten
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    kitten = Kitten.find(params[:id])
    kitten.update!(kitty_params)
    flash[:success] = 'Kitten successfully updates.'
    redirect_to kitten
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    if @kitten.destroy
      flash[:success] = 'Kitten successfully destroyed.'
      redirect_to kittens_path
    else
      flash[:error] = 'Failed to destroy the kitten.'
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def kitty_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
