class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @trainer_pokemons = Pokemon.find_by(:trainer_id => @trainer.id)
  end

end
