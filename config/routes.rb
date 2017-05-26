Rails.application.routes.draw do
  get 'statics/index'

  get 'statics/about'

  get 'peliculas/index'
  get '/about' => 'statics#about', :as => :about

  root :to => "statics#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
