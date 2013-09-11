module OceanCommander
  class Droplets < General
    desc "list", "list droplets"
    def list
      tp api.droplets.list.droplets
    end
  end
end
