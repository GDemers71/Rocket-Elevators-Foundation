Rails.application.routes.draw do
  
  resources :interventions
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
  get 'interventions', to: 'interventions#new'
  get 'get_buildings_by_customer/:customer_id', to: 'buildings#get_buildings_by_customer'  
  get '/building_search' => 'buildings#building_search'
  get 'get_batteries_by_building/:building_id', to: 'batteries#get_batteries_by_building'  
  get '/battery_search' => 'batteries#battery_search'
  get 'get_columns_by_battery/:battery_id', to: 'columns#get_columns_by_battery'  
  get '/column_search' => 'columns#column_search'
  get 'get_elevators_by_column/:column_id', to: 'elevators#get_elevators_by_column'  
  get '/elevator_search' => 'elevators#elevator_search'
  post 'intervention', to: 'interventions#create', as: "interventionscreate"
end
