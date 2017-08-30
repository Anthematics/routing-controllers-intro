Rails.application.routes.draw do
get '/welcome' => 'pages#welcome'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#welcome'

	get'/about' => 'pages#about' #(first routing method written)
	get '/contest' => 'pages#contest' #second routing method => connects contest.html
	get '/contests' => 'pages#contest'

	get '/kitten/:size' => 'pages#kitten', as:'kitten'

	get '/kitten' => 'pages#kitten'


	get '/kittens/:size' => 'pages#kittens', as:'kittens'
	get'/secrets/:magic_word' => 'pages#secrets'
end
