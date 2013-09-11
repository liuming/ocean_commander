module OceanCommander
  class Droplets < General
    default_task :list

    desc "droplets", "list droplets"
    def list
      tp api.droplets.list.droplets
    end
  end
end
