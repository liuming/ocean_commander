module OceanCommander
  class SshKeys < General
    default_task :list

    desc "ssh_keys", "list ssh keys"
    def list
      tp api.ssh_keys.list.ssh_keys
    end
  end
end
