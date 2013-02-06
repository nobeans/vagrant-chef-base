package "java" do
  action :install
end

service "java" do
  action [:enable, :start]
end
