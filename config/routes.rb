Rails.application.routes.draw do
  root   'profiles#index'
  get    'edit',   to: 'profiles#edit'
  post   'edit',   to: 'profiles#update'
  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  namespace :zemoga_portfolio_api, defaults: {format: :json} do
      get  '/user_info',        to: 'profiles#index'
      post '/modify_user_info', to: 'profiles#update'
  end

end
