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

    desc "show", "show a droplet"
    def show(id)
      tp api.droplets.show(id).droplet
    end

    desc "reboot", "reboot a droplet"
    def reboot(id)
      tp api.droplets.reboot(id).droplet
    end

    desc "shutdown", "shutdown a droplet"
    def shutdown(id)
      tp api.droplets.shutdown(id)
    end

    desc "poweron", "turn on a droplet"
    def poweron(id)
      tp api.droplets.power_on(id)
    end

    desc "poweroff", "turn off a droplet"
    def poweroff(id)
      tp api.droplets.power_off(id)
    end

    desc "rebuild", "rebuild a droplet"
    def rebuild(id, image_id)
      tp api.droplets.rebuild(id, image_id: image_id)
    end

    desc "password_reset", "reset password for a droplet"
    def password_reset(id, image_id)
      tp api.droplets.password_reset(id)
    end
  end
end
