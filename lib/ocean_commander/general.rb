module OceanCommander
  class General < Thor
    class_option :debug, :type => :boolean
    class_option :client_id, :type => :string
    class_option :api_key, :type => :string

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
