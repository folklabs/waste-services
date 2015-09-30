Rails.application.routes.draw do
	# get 'containers/missed', to: 'missed_bins#show'
  resources :containers
  resources :services
  
  get 'missed-containers', to: 'missed_bins#show'

  # resource 'missed_bin'

  root to: 'visitors#index'
end
