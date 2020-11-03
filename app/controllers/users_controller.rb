class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create

		puts "$" * 60
    	puts "ceci est le contenu de params :"
    	puts params
    	puts "$" * 60

    	@user = User.new(name: params[:name], email: params[:email])

		if @user.save
    	puts "Utilisateur sauvegardé"	
    #  redirect_to gossips_path, notice: "Profil créé, tu vas pouvoir rapporter de nouveaux potins !"
      
    	else
      	puts "Nous n'avons pas pu créer ton profil. Voici pourquoi :"
      	puts @user.errors.messages
     	render'new', alert: "Ton profil utilisateur n'a pas pu être sauvegardé, vois pourquoi ds la notification."
    	end
    end

end