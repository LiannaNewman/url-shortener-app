Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'links#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/registrations#new', as: :unauthenticated_root
    end
  end

  get '/links' => 'links#index'
  get '/links/new' => 'links#new'
  post '/links' => 'links#create'
  get '/visits/links/:id' => 'links#show'
  get '/visits/links/:id/edit' => 'links#edit'
  patch '/visits/links/:id' => 'links#update'
  delete 'visits/links/:id' => 'links#destroy'

  get '/visits' => 'vists#create'
end
