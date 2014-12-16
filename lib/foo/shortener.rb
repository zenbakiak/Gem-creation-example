module Foo
  class Shortener
    attr_accessor :long_url

    SHORTENER_URL = 'https://www.googleapis.com/urlshortener/v1/url'
    def initialize(long_url='')
      @long_url = long_url
    end

    # curl https://www.googleapis.com/urlshortener/v1/url \
    #   -H 'Content-Type: application/json' \
    #   -d '{"longUrl": "http://www.google.com/"}'
    # Expected: {"kind"=>"urlshortener#url", "id"=>"http://goo.gl/NPcPZT", "longUrl"=>"http://fundwise.co/"}
    def short
      uri  = URI.parse( SHORTENER_URL )
      http = Net::HTTP.new( uri.host, uri.port )
      http.use_ssl = true
      request = Net::HTTP::Post.new( uri.path )
      request.add_field( 'Content-Type', 'application/json' )
      data = {longUrl: long_url}.to_json
      request.body = data
      response = JSON.parse(http.request(request).body)
      return response
    end

  end
end
