class SparkCoreService
  
  def self.get_current
    conn.post do |req|
      req.url '/led'
      # req.headers['Content-Type'] = 'application/json'
      # https://api.particle.io/v1/devices/53ff76065075535134151687/led
      req.params = {"access_token": "583eac7414026893b9b1856e74b537c37d379037"}
      # req.body = '{ "name": "Unagi" }'
    end
  end
  
  def self.conn
    Faraday.new(:url => 'https://api.particle.io/v1/devices/53ff76065075535134151687') do |faraday|
      # faraday.request  :url_encoded             # form-encode POST params
      # faraday.response :logger                  # log requests to STDOUT
      # faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
  end

end