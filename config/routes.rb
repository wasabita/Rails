Rails.application.routes.draw do
	resources :ships do
		resources :equips,only: [:create,:destroy]
	end
	resources :eq_data

	root 'ships#index'
end
