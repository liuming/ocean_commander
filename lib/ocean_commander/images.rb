module OceanCommander
  class Images < General
    desc "list", "list images"
    def list
      tp api.images.list.images
    end
  end
end
