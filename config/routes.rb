Rails.application.routes.draw do
  root 'destination_links#index'

  resources :destination_links do
    resources :tracked_urls
  end

  resources :tracked_histories

  namespace :api, defaults: { format: :json } do
    scope 'v1', module: 'v1' do
      resources :tracked_histories
    end
  end
end
