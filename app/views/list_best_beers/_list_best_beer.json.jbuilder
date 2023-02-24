json.extract! list_best_beer, :id, :title, :description, :text, :created_at, :updated_at
json.url list_best_beer_url(list_best_beer, format: :json)
