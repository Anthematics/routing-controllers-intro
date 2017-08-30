class PagesController < ApplicationController
	before_action :set_kitten_url, only: [:kitten,:kittens]

	def welcome
	end

	def kitten
	end

	def kittens
	end

	def secrets
	end

	def set_kitten_url
		requested_size = params[:size]
		@kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
	end

	def contest
		flash[:notice] = "sorry this contest has ended"
		redirect_to "/welcome"
	end

end
