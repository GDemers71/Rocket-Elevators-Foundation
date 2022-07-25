Rails.application.routes.draw do
  
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  root to: 'index#index'
  
  resources :quotes
  resources :employee_lists
  resources :building_details
  resources :elevators
  resources :batteries
  resources :columns
  resources :buildings
  resources :customers
  resources :addresses
  resources :leads
  resources :messages
  resources :googlemaps

  get '/test', to: 'messages#patate'
  get 'termsAndConditions', to: 'index#termsAndConditions', as: "termsAndConditions"
  get 'privacy', to: 'index#privacy', as: "privacy"
  get 'commercial', to: 'index#commercialpage', as: "commercial"
  get 'residential', to: 'index#residentialpage', as: "residential"
  get 'index', to: 'index#index'
  post 'lead', to: 'leads#create', as: "leadcreate"
  get 'googlemap', to: 'googlemaps#index', as: "maps"
end
