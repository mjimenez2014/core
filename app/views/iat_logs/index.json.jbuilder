json.array!(@iat_logs) do |iat_log|
  json.extract! iat_log, :id, :description, :iat_id
  json.url iat_log_url(iat_log, format: :json)
end
