require 'thor'

module Myyard
  class CLI < Thor
    map "-v" => :version, "--version" => :version, "-h" => :help, "--help" => :help
    
    desc "download", "Download the VM image (400Mb+)"
    def download
      path = ENV['MYYARD_BOX'] || "http://files.vagrantup.com/lucid32.box"
      exec "vagrant box add myyard #{path}"
    end

    desc "setup", "Setup this Rails/Rack application for a VM cluster yard"
    def setup
      exec "vagrant init myyard"
    end
    
    desc "deploy [ENV]", "Deploy app to local VM (default env: development)"
    def deploy(env = "development")
      exec "vagrant up"
    end
  end
  
end