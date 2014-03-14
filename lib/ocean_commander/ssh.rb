module OceanCommander
  class Ssh < General
    desc "ip", "ssh to a droplet by ip"
    def ip(droplet_ip)
      Kernel.exec("ssh #{droplet_ip}")
    end
  end
end
