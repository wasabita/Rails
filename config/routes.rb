Rails.application.routes.draw do
	resources :ships do
		resources :equips,only: [:create,:destroy]
	end


	root 'ships#index'
end
