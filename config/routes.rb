Rails.application.routes.draw do
  resources :test_procedures
  resources :matter_types
  resources :departments
  resources :staffs
  resources :patients
  resources :episodes do
    resources :episode_tests
  end
  get '/patient_search', to: 'patients#search', as: 'search_patient'
  post '/patient_search_result', to: 'patients#search_result', as: 'search_patient_result'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "patients#index"
end
