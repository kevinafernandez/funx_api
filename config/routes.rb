Rails.application.routes.draw do

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :artists
      resources :albums do
        member do
          get '/play', to: 'albums#play'
        end
      end
    end
  end

end
