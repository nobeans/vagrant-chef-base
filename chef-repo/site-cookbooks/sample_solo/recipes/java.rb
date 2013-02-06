#package "java" do
#  action :install
#end

java_ark "jdk" do
    url 'http://download.oracle.com/otn-pub/java/jdk/6u29-b11/jdk-6u29-linux-x64.bin'
    checksum  'a8603fa62045ce2164b26f7c04859cd548ffe0e33bfc979d9fa73df42e3b3365'
    app_home '/usr/local/java/default'
    bin_cmds ["java", "javac"]
    action :install
end
