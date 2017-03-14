Rails.application.routes.draw do

  resources :articles
  resources :comments

  root 'welcome#index'

  get '/admin' => 'admin#home'

  post '/comments/create' => 'comments#create'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
