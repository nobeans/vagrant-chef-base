shared_repo = "~/Developer/workspace/chef-repo"

file_cache_path           "/tmp/chef-solo"
data_bag_path             "/tmp/chef-solo/data_bags"
encrypted_data_bag_secret "/tmp/chef-solo/data_bag_key"
role_path                 ["#{shared_repo}/roles", "/tmp/chef-solo/roles"]
cookbook_path             ["#{shared_repo}/cookbooks", "/tmp/chef-solo/site-cookbooks", "/tmp/chef-solo/cookbooks"]

# Logging
log_level :debug

# Proxy
#if ENV["http_proxy"] != nil then
#  require 'rest-client'
#  RestClient.proxy = ENV["http_proxy"]
#
#  require 'uri'
#  proxy_env = URI.parse(ENV["http_proxy"])
#  proxy_user, proxy_pass = proxy_env.userinfo.split(":")
#
#  http_proxy "http://#{proxy_env.host}:#{proxy_env.port}"
#  https_proxy "http://#{proxy_env.host}:#{proxy_env.port}"
#  http_proxy_user proxy_user
#  http_proxy_pass proxy_pass
#  https_proxy_user proxy_user
#  https_proxy_pass proxy_pass
#  no_proxy "192.168.*"
#end
#
# This is not enough because...
#   'knife solo prepare' is failed
#   omni download is failed
#   'yum install' is failed
#   many other cookbooks are failed
# So I decided to set the proxy settings and sudoers by own shellscript.
