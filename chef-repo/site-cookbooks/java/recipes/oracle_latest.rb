java_ark "jdk" do
    url 'http://download.oracle.com/otn-pub/java/jdk/7u13-b20/jdk-7u13-linux-x64.tar.gz'
    checksum  '5045457407e120207ebd5c5b93ec6ee6ee61d76747ebf3ce467aad51c9c3cb5d'
    app_home '/usr/local/java/default'
    bin_cmds ["java", "javac", "jvisualvm", "jar", "keytool", "jstack", "jstat", "jps", "jmap", "jinfo", "jhat", "javap", "javadoc"]
    action :install
end
