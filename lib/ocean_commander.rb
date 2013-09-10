require_relative "ocean_commander/version"

require 'thor'
require 'digital_ocean'
require 'table_print'

module OceanCommander
  class Ocean < Thor
    class_option :debug, :type => :boolean
    class_option :client_id, :type => :string
    class_option :api_key, :type => :string

    desc "droplets", "list droplets"
    def droplets(action='list', id=nil)
      tp api.droplets.list.droplets
    end

    desc "sizes", "list sizes"
    def sizes
      tp api.sizes.list.sizes
    end

    desc "regions", "list regions"
    def regions
      tp api.regions.list.regions
    end

    desc "ssh_keys", "list ssh keys"
    def ssh_keys(action='list', id=nil)
      tp api.ssh_keys.list.ssh_keys
    end

    desc "images", "list images"
    def images(action='list', id=nil)
      tp api.images.list.images
    end

    desc "domains", "list domains"
    def domains(action='list', id=nil)
      tp api.domains.list.domains
    end

    private

    def api
      DigitalOcean::API.new(
        client_id: options[:client_id] || ENV['DO_CLIENT_ID'],
        api_key: options[:api_key] || ENV['DO_API_KEY'],
        debug: options[:debug] || false
      )
    end
  end
end
