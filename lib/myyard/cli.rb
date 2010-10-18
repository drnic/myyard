require 'thor'

module Myyard
  class CLI < Thor
    map "-v" => :version, "--version" => :version, "-h" => :help, "--help" => :help
    
    desc "download", "Download the VM image (400Mb+)"
    def download
      path = ENV['MYYARD_BOX'] || "http://files.vagrantup.com/lucid32.box"
      exec "vagrant box add myyard #{path}"
    end

    desc "setup", "Setup application to use local VMs"
    def setup
      exec "vagrant init myyard"
    end
    
    desc "deploy [ENV]", "Deploy app to local VMs (default env: development)"
    def deploy(env = "development")
      error "No support yet for deployment of alternate environments" unless env == "development"
      exec "vagrant up"
    end
    
    desc "destroy ENV", "Destroy the running VMs for target environment"
    method_option :all, :desc => "destroy all running VMs", :type => :boolean, :default => false
    def destroy(env)
      error "Flag --all not yet supported" if options[:all]
      error "Not yet supported"
    end
    
    private
    def error(msg)
      say msg, :red
      exit 1
    end
  end
  
end