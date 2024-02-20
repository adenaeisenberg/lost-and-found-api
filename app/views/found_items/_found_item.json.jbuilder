# json.extract! found_item, :id, :created_at, :updated_at
# json.url found_item_url(found_item, format: :json)

json.name found_item.name 
json.image_url found_item.image_url 
json.location found_item.location 
json.date found_item.date 
json.created_at found_item.created_at 
json.updated_at found_item.updated_at 