Rails.application.routes.draw do
  
  namespace :api do
    get '/runs' => 'runs#index'
    post '/runs' => 'runs#create'
    get '/runs/:id' => 'runs#show'
    patch '/runs/:id' => 'runs#update'
    delete '/runs/:id' => 'runs#destroy'
  end
  devise_for :users
end
