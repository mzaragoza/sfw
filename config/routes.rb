SobrietyforwomenAdmin::Application.routes.draw do
  devise_for :admins, :controllers => { registrations: 'admins/registrations',
                                       :sessions => "admins/sessions",
                                       :passwords => 'admins/passwords',
                                       :confirmations => 'admins/confirmations'
  }

  authenticate :admin do
    namespace :admins do
      resources :ui
      resources :admins
      resources :girls
      resources :payments
      resources :profile, :only => [:edit, :update]
      resources :users
      resources :notes
      resources :vendors
      resources :expenses
      resources :exams
      resources :proofs
      resources :vacations
      resources :prospects
      resources :messages
      resources :links
      resources :documents
      resources :properties
      resources :insurance_payments
      get '/dashboard' => 'dashboards#index', as: :dashboard
      get '/' => 'dashboards#index'
    end
  end
  root :to => 'pages#index'
end
