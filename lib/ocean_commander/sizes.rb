module OceanCommander
  class Sizes < General
    desc "list", "list sizes"
    def list
      tp api.sizes.list.sizes
    end
  end
end
