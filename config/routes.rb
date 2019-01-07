Rails.application.routes.draw do
  devise_for :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "battles#top"
    get "/index", to: "battles#index"
    get "/new", to: "battles#new"
    post "/create", to: "battles#create"
    delete "/cards/:id", to: "battles#destroy"
    get "/cards/:id/card_edit", to: "battles#card_edit"
    patch "/cards/:id", to: "battles#card_update"
end



