json.array!(@runstats) do |runstat|
  json.extract! runstat, :id, :location, :user, :time
  json.url runstat_url(runstat, format: :json)
end
