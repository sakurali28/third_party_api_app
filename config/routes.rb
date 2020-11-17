Rails.application.routes.draw do
  namespace :api do
    get "/cats" => "cats#index"
  end
end
