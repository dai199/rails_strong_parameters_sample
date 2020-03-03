Rails.application.routes.draw do
  get '/strong_parameters/1_1', to: 'users#sp1_1'
  post '/strong_parameters/1_1', to: 'users#sp1_1'
  get '/strong_parameters/1_2', to: 'users#sp1_2'
  post '/strong_parameters/1_2', to: 'users#sp1_2'
  get '/strong_parameters/1_3', to: 'users#sp1_3'
  post '/strong_parameters/1_3', to: 'users#sp1_3'
  get '/strong_parameters/2', to: 'users#sp2'
  post '/strong_parameters/2', to: 'users#sp2'
  get '/strong_parameters/3', to: 'users#sp3'
  post '/strong_parameters/3', to: 'users#sp3'
  get '/strong_parameters/4', to: 'users#sp4'
  post '/strong_parameters/4', to: 'users#sp4'
  get '/strong_parameters/5', to: 'users#sp5'
  post '/strong_parameters/5', to: 'users#sp5'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
