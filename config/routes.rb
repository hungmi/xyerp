Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'admin', to: redirect('/admin/workpieces')
	namespace :admin do
		resources :customers do
			resources :workpieces
		end
		resources :workpieces do
			resources :manufacturing_records
		end
		resources :factories do
			resources :procedures
		end
		resources :manufacturing_records
	  resources :users
	  get 'signin', to: 'sessions#new'
	  post 'signin', to: 'sessions#create'
	  delete 'logout', to: 'sessions#destroy'
	end
end
