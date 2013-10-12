module OceanCommander
  class SshKeys < General
    desc "list", "list ssh keys"
    def list
      tp api.ssh_keys.list.ssh_keys
    end

    desc "show SSH_KEY_ID", "show an ssh key"
    def show(id=nil)
      tp api.ssh_keys.show(id).ssh_key
    end

    desc "add NAME SSH_PUB_KEY", "add a ssh public key"
    def add(name,ssh_pub_key=nil)
      tp api.ssh_keys.add(name: name, ssh_pub_key: ssh_pub_key).ssh_key
    end

    desc "edit SSH_KEY_ID SSH_PUB_KEY", "edit an ssh key"
    def edit(id, ssh_pub_key=nil)
      tp api.ssh_keys.edit(id, ssh_pub_key: ssh_pub_key).ssh_key
    end

    desc "destroy", "delete an ssh public key"
    def destroy(id)
      tp api.ssh_keys.delete(id).ssh_key
    end
  end
end
