require 'thor'

module My
  class CLI < Thor
    map "-v" => :version, "--version" => :version, "-h" => :help, "--help" => :help
    
    desc "setup", "Setup this Rails/Rack application for a VM cluster yard"
    def setup
      exec "vagrant init --box_name myyard"
    end
  end
  
end