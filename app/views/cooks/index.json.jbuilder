json.array!(@cooks) do |cook|
  json.extract! cook, :host_id, :recipe_id, :user, :success, :log, :memo
  json.url cook_url(cook, format: :json)
end