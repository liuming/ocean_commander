module OceanCommander
  class Sizes < General
    default_task :list

    desc "sizes", "list sizes"
    def list
      tp api.sizes.list.sizes
    end
  end
end
