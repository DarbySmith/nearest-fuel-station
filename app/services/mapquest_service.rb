class MapquestService
  def self.conn
    Faraday.new("http://www.mapquestapi.com") do |faraday|
      faraday.params['key'] = ENV['MAPQUEST_API_KEY']
    end
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.directions(from, to)
    get_url("/directions/v2/route?from=#{from}&to=#{to}")
  end
end