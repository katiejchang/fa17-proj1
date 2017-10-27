class PokemonController < ApplicationController
	def capture
		poke = Pokemon.find(params[:id]) 
		poke.trainer_id = current_trainer.id
		poke.save
		redirect_to 'root'
	end

	def damage
	    pokemon = Pokemon.find(params[:id])
	    pokemon.health -= 10
	    if pokemon.health == 0
	      pokemon.delete
	    else
	      pokemon.save
	    end
	    redirect_to trainer_path(id: pokemon.trainer_id)
	end

  	def new
  	end

  	 def create
	    pokemon = Pokemon.new
	    pokemon.update(pokemon_params)
	    pokemon.trainer_id = current_trainer.id
	    pokemon.level = 1
	    pokemon.health = 100

	    if pokemon.valid?
	      pokemon.save
	      redirect_to "/trainers/#{current_trainer.id}"
	    else
	      flash.now[:error] = pokemon.errors.full_messages.to_sentence
	      render :action => :new
	    end
  	end

  	def pokemon_params
    	params.require(:pokemon).permit(:name)
	end

end