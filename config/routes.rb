Rails.application.routes.draw do
get '/welcome' => 'pages#welcome'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/' => 'pages#welcome'

get'/about' => 'pages#about' #(first routing method written)
get '/contest' => 'pages#contest' #second routing method => connects contest.html
get '/contests' => 'pages#contest'
end
