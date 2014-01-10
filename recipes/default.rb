pkgs = value_for_platform(
  [ "ubuntu" ] => {
    "default" => %w{ php5-mcrypt }
  }
)

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

template "#{node['php']['ext_conf_dir']}/mcrypt.ini" do
  mode "0644"
end