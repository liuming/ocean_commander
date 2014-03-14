require 'thor'
require 'digital_ocean'
require 'table_print'

require_relative "ocean_commander/version"
require_relative "ocean_commander/general"
require_relative "ocean_commander/droplets"
require_relative "ocean_commander/regions"
require_relative "ocean_commander/images"
require_relative "ocean_commander/ssh_keys"
require_relative "ocean_commander/sizes"
require_relative "ocean_commander/domains"
require_relative "ocean_commander/ssh"

module OceanCommander
  class Ocean < General
    desc "droplets", "manage droplets"
    subcommand :droplets, Droplets

    desc "ssh_keys", "manage ssh keys"
    subcommand :ssh_keys, SshKeys

    desc "images", "manage images"
    subcommand :images, Images

    desc "regions", "list regions"
    subcommand :regions, Regions

    desc "sizes", "manage sizes"
    subcommand :sizes, Sizes

    desc "domains", "manage domains"
    subcommand :domains, Domains

    desc "ssh", "ssh to droplets"
    subcommand :ssh, Ssh
  end
end
