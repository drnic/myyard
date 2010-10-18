require 'thor'

module Myyard
  class CLI < Thor
    map "-v" => :version, "--version" => :version, "-h" => :help, "--help" => :help
    
    desc "setup", "Setup this Rails/Rack application for a VM cluster yard"
    def setup
      exec "vagrant init myyard"
    end
    
    desc "download", "Download the VM image (400Mb+)"
    def download
      exec "vagrant box add myyard /path/to/the/package.box"
    end
  end
  
end