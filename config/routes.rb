Rails.application.routes.draw do
 
  devise_for :users
    #resources :comments
     resources :blobs
    resources :articles do
	  resources :comments
	end
    #root'blobs#index'
  root 'articles#index'

  get '/contractus'=>'homes#contractus'
  get '/aboutus'=>'homes#aboutus'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
