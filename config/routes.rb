Rails.application.routes.draw do

  #get 'payment_select/select_plan'

  #get 'payment_select/select_monthly_subcription'

  get 'select_movies/index'
  get '/select_plan' => 'payment_select#select_plan', as: :select_plan
  get '/select_monthly_subscription' => 'payment_select#select_monthly_subscription', as: :select_monthly_subscription
  
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get '/about' => 'statics#about', :as => :about
  resources :peliculas
  resources :settings
  resources :select_movies, only: :index
  resources :charges
  resources :payments


  root "statics#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
