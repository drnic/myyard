module VagrantHelpers
  require "thor"
  def fixture_box_available!
    box = File.expand_path(File.join(File.dirname(__FILE__), "..", "fixtures", "myyard.box"))
    unless File.exist?(box)
      $stderr.puts <<-EOS.gsub(/^    /, '')
      
      #{Thor::Shell::Color::RED}ERROR!!#{Thor::Shell::Color::CLEAR}
      #{Thor::Shell::Color::YELLOW}
      To run many of the cucumber features, you will need to download a specific
      virtualbox image.
      
      Run:#{Thor::Shell::Color::CLEAR}
      rake download_box
      
      
      EOS
      File.should be_exist(box)
    end
  end
end

World(VagrantHelpers)