class PokemonsController < ApplicationController
	def capture
		poke = pokemon.find(params[:id])
		poke.trainer_id = current_trainer
		redirect_to home
	end

end