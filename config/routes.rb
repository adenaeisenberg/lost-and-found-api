Rails.application.routes.draw do
  get "/lost_items" => "lost_items#index"
  post "/lost_items" => "lost_items#create"

end
