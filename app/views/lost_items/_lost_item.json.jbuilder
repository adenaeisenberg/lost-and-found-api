# json.extract! lost_item, :id, :created_at, :updated_at
# json.url lost_item_url(lost_item, format: :json)

json.id lost_item.id 
json.name lost_item.name 
json.image_url lost_item.image_url 
json.last_seen lost_item.last_seen 
json.created_at lost_item.created_at 
json.updated_at lost_item.updated_at 