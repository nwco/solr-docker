default['solr-docker']['message'] = 'A wonderful day for Solr!'
default['solr-docker']['java_home'] = '/usr/lib/jvm/java'
default['solr-docker']['java_bin'] = '/usr/lib/jvm/java/bin/java'
default['solr-docker']['solr_port'] = '8983'
default['solr-docker']['solr_version'] = '6.6.0 (upstream)'
# 'java' cookbook attributes
default['java']['install_flavor'] = 'oracle'
default['java']['jdk_version'] = '8'
# Uncomment the next two lines if you want to use a local copy of the JDK tarball
default['java']['tarball'] = 'file:///Users/nwhite/Downloads/jdk-8u144-linux-x64.tar.gz'
default['java']['tarball_checksum'] = 'e8a341ce566f32c3d06f6d0f0eeea9a0f434f538d22af949ae58bc86f2eeaae4'
# This term acceptance is needed if you dowload from Oracle
default['java']['oracle']['accept_oracle_download_terms'] = true
