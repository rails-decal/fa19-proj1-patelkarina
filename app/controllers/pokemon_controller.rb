class PokemonsController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer = current_trainer
		pokemon.save 
		redirect_to '/'
	end
	
	def damage 
		pokemon = Pokemon.find(params[:id])
		pokemon.health -= 10
		trainer = pokemon.trainer
		pokemon.save
		if pokemon.health <= 0
			pokemon.destroy
		end
		redirect_to "/trainers/#{trainer.id}"
	end

	def new 
		@pokemon = Pokemon.new
	end

	def create 
		@pokemon = Pokemon.create pokemon_params
		@pokemon.trainer = current_trainer
		@pokemon.health = 100
		@pokemon.level = 1
		if @pokemon.save
			redirect_to "/trainers/#{current_trainer.id}"
		else
			redirect_to "/pokemons/new"
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end

	private
		def pokemon_params
			params.require(:pokemon).permit(:name, :ndex)
		end
end
 
