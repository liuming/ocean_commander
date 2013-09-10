require_relative "ocean_commander/version"

require 'thor'
require 'digital_ocean'
require 'table_print'

module OceanCommander
  API = DigitalOcean::API.new client_id: ENV['DO_CLIENT_ID'], api_key: ENV['DO_API_KEY']#, debug: true
  class Ocean < Thor
    desc "droplets", "list droplets"
    def droplets(action=nil, id=nil)
      tp API.droplets.list.droplets
    end
  end
end
