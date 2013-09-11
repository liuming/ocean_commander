module OceanCommander
  class Domains < General
    default_task :list

    desc "domains", "list domains"
    def list
      tp api.domains.list.domains
    end
  end
end
