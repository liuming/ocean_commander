module OceanCommander
  class Regions < General
    default_task :list

    desc "regions", "list regions"
    def list
      tp api.regions.list.regions
    end
  end
end
