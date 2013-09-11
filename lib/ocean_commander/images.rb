module OceanCommander
  class Images < General
    default_task :list

    desc "images", "list images"
    def list
      tp api.images.list.images
    end
  end
end
