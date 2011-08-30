require 'uri'
require 'net/http'
require 'net/https'
require 'json'
module CrunchBase
  class Base
    URL = "api.crunchbase.com"
    VERSION = "1"

    def list(namespace)
      self.fetch( "http://#{URL}/v/#{VERSION}/#{namespace.pluralize}.js" )
    end

    def show(name, namespace)
      Hashit.new( self.fetch( "http://#{URL}/v/#{VERSION}/#{namespace}/#{name}.js" ) )
    end

    def search(name)
      Hashit.new( self.fetch( "http://#{URL}/v/#{VERSION}/search.js?query=#{name}" ) )
    end

    def fetch(url)
      url = URI.parse(url)
      res = Net::HTTP.start(url.host, url.port) {|http|
        if url.query.nil?
          http.get(url.path)
        else
          http.get(url.path+"?"+url.query)
        end
      }
      JSON.parse(res.body)
    end

  end
end
