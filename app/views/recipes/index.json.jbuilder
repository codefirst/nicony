json.array!(@recipes) do |recipe|
  json.extract! recipe, :name, :tasks, :user_id, :memo
  json.url recipe_url(recipe, format: :json)
end