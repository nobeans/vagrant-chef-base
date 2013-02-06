name "java"
description "Install Oracle Java on Ubuntu"
override_attributes(
  "java" => {
    "jdk_version" => "7",
    "install_flavor" => "oracle",
    "oracle" => "accept_oracle_download_terms"
  }
)
run_list(
  "recipe[java]"
)
