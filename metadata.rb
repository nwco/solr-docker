name 'solr-docker'
maintainer 'Nick White'
maintainer_email 'nwhite@cloudera.com'
license 'Apache-2.0'
description 'Installs/Configures solr-docker'
long_description 'Installs/Configures solr-docker'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/solr-docker/issues'

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/solr-docker'
depends 'java', '~> 1.50.0'
depends 'solr', '~> 0.6.0'
