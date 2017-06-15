Rails.application.routes.draw do

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :peliculas
  resources :settings

  get '/about' => 'statics#about', :as => :about

  root :to => "statics#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
