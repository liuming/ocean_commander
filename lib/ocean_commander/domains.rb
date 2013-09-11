module OceanCommander
  class Domains < General
    desc "list", "list domains"
    def list
      tp api.domains.list.domains
    end
  end
end
