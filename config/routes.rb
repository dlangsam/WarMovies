Rails.application.routes.draw do

	root to: "static#index"
	get '/about', to: "static#about"
  scope '/api' do
    resources :movies
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
