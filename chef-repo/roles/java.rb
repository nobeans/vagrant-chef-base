name "java"
description "Install Oracle Java on Linux"
override_attributes(
  :java => {
    :jdk_version => "7",
    :install_flavor => :oracle,
    :oracle => {
      :accept_oracle_download_terms => true,
    }
  }
)
run_list(
  "recipe[java]"
)
