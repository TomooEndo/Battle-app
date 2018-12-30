Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "battles#top"
    get "/index", to: "battles#index"
    get "/new", to: "battles#new"
    post "/create", to: "battles#create"
end



