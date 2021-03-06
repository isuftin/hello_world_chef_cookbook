name 'hello_world'
maintainer 'Ivan Suftin'
maintainer_email 'isuftin@usgs.gov'
license 'public domain'
description 'Installs/Configures hello_world'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.1'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/isuftin/hello_world_chef_cookbook/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/isuftin/hello_world_chef_cookbook' if respond_to?(:source_url)
