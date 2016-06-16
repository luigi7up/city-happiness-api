Rails.application.routes.draw do

  #constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :happinesses, only:[:create]
        get '/top-happiest-cities', to:'happinesses#top_happiest_cities', as: 'top_happy_cities'
      end
    end
  #end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
