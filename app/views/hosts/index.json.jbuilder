json.array!(@hosts) do |host|
  json.extract! host, :name, :address, :user_name, :password, :description
  json.url host_url(host, format: :json)
end
