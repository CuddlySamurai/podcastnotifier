Rails.application.routes.draw do
  resources :podcasts do
  	get 'test', on: :member
  	get 'start', on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
