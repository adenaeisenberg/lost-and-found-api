Rails.application.routes.draw do
  # Lost Item Routes (all have been tested and work)
  get "/lost_items" => "lost_items#index"
  post "/lost_items" => "lost_items#create"
  get "/lost_items/:id" => "lost_items#show"
  patch "/lost_items/:id" => "lost_items#update"
  delete "/lost_items/:id" => "lost_items#destroy"

  # Found Items Routes (all have been tested and work)
  get "/found_items" => "found_items#index"
  post "/found_items" => "found_items#create"
  get "/found_items/:id" => "found_items#show"
  patch "/found_items/:id" => "found_items#update"
  delete "/found_items/:id" => "found_items#destroy"
end
