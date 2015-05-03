Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bands
      delete 'bands', to: 'bands#destroy'
    end
  end
end
