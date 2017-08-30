class PagesController < ApplicationController
	before_action :set_kitten_url, only: [:kitten,:kittens]

	def welcome
	end

	def kitten
	end

	def kittens
	end

	def secrets

		if params[:magic_word] == "octopus"
			puts "right"
		else
			redirect_to "/welcome"
			flash[:alert] = "tut-tut that's not the magic word so you shall not pass"
		end
	end
# Our goal is to make it so that
#  only the correct magic word will allow you to see the secrets page.
#  You can do this by putting a redirect_to inside an if statement that compares params[:magic_word]
	#  (the wildcard from the URL) to a string that contains the magic word of your choosing and see if they match.
	#  It's up to you what other URL you want to redirect them to in the case that the magic words don't match.?
	def set_kitten_url
		requested_size = params[:size]
		@kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
	end

	def contest
		flash[:notice] = "sorry this contest has ended"
		redirect_to "/welcome"
	end

end
