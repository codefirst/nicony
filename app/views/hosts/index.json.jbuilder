json.array!(@hosts) do |host|
  json.extract! host, :name, :ip, :user_name, :password, :description
  json.url host_url(host, format: :json)
end