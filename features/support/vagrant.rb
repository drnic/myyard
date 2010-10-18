module VagrantHelpers
  require "thor"
  def fixture_box_available!
    @fixture_box = File.expand_path(File.join(File.dirname(__FILE__), "..", "fixtures", "myyard.box"))
    unless File.exist?(@fixture_box)
      $stderr.puts <<-EOS.gsub(/^    /, '')
      
      #{Thor::Shell::Color::RED}ERROR!!#{Thor::Shell::Color::CLEAR}
      #{Thor::Shell::Color::YELLOW}
      To run many of the cucumber features, you will need to download a specific
      virtualbox image.
      
      Run:#{Thor::Shell::Color::CLEAR}
      rake download_box
      
      
      EOS
      File.should be_exist(@fixture_box)
    end
    ENV['MYYARD_BOX'] = @fixture_box
  end
end

World(VagrantHelpers)
After('~@novagrant') do
  in_project_folder do
    if File.exist?(".vagrant")
      @stdout = File.expand_path(File.join(@tmp_root, "vagrant-destroy.out"))
      in_project_folder { exec "vagrant destroy > #{@stdout} 2> #{@stdout}" }
    end
  end
  ENV['MYYARD_BOX'] = nil
end