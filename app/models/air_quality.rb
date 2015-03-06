class AirQuality

  def initialize(location)
   @location = location.split.join("+")
   @content = HTTParty.get(
       "https://breezometer.p.mashape.com/location/?lang=en&location=#{@location}",
       :headers => {
       "X-Mashape-Key" => "#{ENV['BREEZEOMETER_TOKEN']}",
       "Accept" => "application/json"
       }
   )
  end
end
