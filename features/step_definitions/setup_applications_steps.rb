Given /^a Rack application$/ do
  FileUtils.cp_r(File.dirname(__FILE__) + "/../fixtures/rack_app", @tmp_root)
  setup_active_project_folder "rack_app"
end