Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#welcome'

get '/' => 'pages#welcome'
get '/about' => 'pages#about'
get '/contest' => 'pages#contest'
get '/kitten/:size' => 'pages#kitten',  as: 'kitten'
get '/kittens/:size' => 'pages#kittens'
get '/secret/:magic_word' => 'pages#secret'
get '/secrets' => 'pages#secrets'

end
