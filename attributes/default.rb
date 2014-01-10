package "php-mcrypt" do
	action [:install]
end

service "php-mcrypt" do
	action [:enable,:start]
end