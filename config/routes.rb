Rails.application.routes.draw do
  root                  'static_pages#home'
  get    'dashboard'    => 'static_pages#dashboard'
  get    'habit_panel'  => 'static_pages#habit_panel'
  get    'data_panel'   => 'static_pages#data_panel'
  get    'help'         => 'static_pages#help'
  get    'about'        => 'static_pages#about'
  get    'contact'      => 'static_pages#contact'
  get    'signup'       => 'users#new'
  get    'login'        => 'sessions#new'
  post   'login'        => 'sessions#create'
  delete 'logout'       => 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end