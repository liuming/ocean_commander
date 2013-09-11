module OceanCommander
  class Regions < General
    desc "list", "list regions"
    def list
      tp api.regions.list.regions
    end
  end
end
