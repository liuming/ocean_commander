module OceanCommander
  class Droplets < General
    desc "list", "list droplets"
    def list
      tp api.droplets.list.droplets
    end

    desc "create NAME SIZE_ID IMAGE_ID REGION_ID", "create a droplet"
    def create(name, size, image, region, ssh_keys='')
      tp api.droplets.create(name: name, size_id: size, image_id: image, region_id: region, ssh_key_ids: ssh_keys).droplet
    end

    desc "delete ID", "delete a droplet"
    def delete(id)
      tp api.droplets.delete(id)
    end
  end
end
