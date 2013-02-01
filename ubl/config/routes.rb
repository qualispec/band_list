Ubl::Application.routes.draw do
  resources :bands do
    get "photo", :as => "photo"
  end
  resources :songs
  resources :recordings
  resources :artists
  root :to => "dashboard#index"

end
