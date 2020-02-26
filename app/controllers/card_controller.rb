class CardController < ApplicationController
  def new
    @card = Card.new
    @list = List.find_by(id: params[:list_id])
  end

  def create
    @card = Card.new(card_params)
    # binding.pry
    if @card.save
      redirect_to root_path
    else
      render action: new
    end
  end

  def show
    @card = Card.find_by(id: params[:id])
  end

  def edit
    @card = Card.find_by(id: params[:id])
  end

  def update
    @card = Card.find_by(id: params[:id])
    if @card.update(card_params)
      redirect_to root_path
    else
      render action: :edit
    end
  end

  def destroy
    @card = Card.find_by(id: params[:id])
    @card.destroy
    redirect_to root_path
  end

  private

  def card_params
    params.require(:card).permit(:title, :memo, :list_id)
  end
end
