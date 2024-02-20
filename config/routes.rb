Rails.application.routes.draw do
  get "/lost_items" => "lost_items#index"
  post "/lost_items" => "lost_items#create"
  get "/lost_items/:id" => "lost_items#show"
  patch "/lost_items/:id" => "lost_items#update"

end
