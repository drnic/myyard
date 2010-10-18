require 'thor'

module Myyard
  class CLI < Thor
    map "-v" => :version, "--version" => :version, "-h" => :help, "--help" => :help
    
    desc "download", "Download the VM image (400Mb+)"
    def download
      path = ENV['MYYARD_BOX'] || "http://files.vagrantup.com/lucid32.box"
      exec "vagrant box add myyard #{path}"
      success "Phew! You won't have to do that again for a while. You are ready to use My Yard for running Rails apps."
    end

    desc "setup", "Setup application to use local VMs"
    def setup
      exec "vagrant init myyard"
      success "You can now edit Vagrantfile to your tastes. Then run 'ey deploy'."
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
      exec "vagrant destroy"
    end
    
    private
    def success(msg)
      say msg, :green
      exit 0
    end
    
    def error(msg)
      say msg, :red
      exit 1
    end
  end
  
end