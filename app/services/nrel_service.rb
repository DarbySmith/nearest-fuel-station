class NrelService
  def self.conn
    Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.params["api_key"] = ENV['NREL_API_KEY']
    end
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.nearest_stations(address)
    get_url("/api/alt-fuel-stations/v1/nearest.json?location=#{address}")
  end
end