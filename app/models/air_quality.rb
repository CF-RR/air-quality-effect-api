class AirQuality

  def initialize(location = nil)
    return nil if location == nil
    @location = location.split.join("+")
    @content = HTTParty.get(
        "https://breezometer.p.mashape.com/location/?lang=en&location=#{@location}",
        :headers => {
        "X-Mashape-Key" => "5Jh6rr6h2Pmsh7bxyXY1dN1QhkJ8p19qMiwjsnQdf6HGXRuhtd",
        "Accept" => "application/json"
        }
    )
    end
  end
