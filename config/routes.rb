Rails.application.routes.draw do
  
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'dashboard/index'

  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  root to: 'pages#index'
  
  get 'dashboard' => 'dashboard#index', as: :dashboard

  get 'reseller/profile'


end
