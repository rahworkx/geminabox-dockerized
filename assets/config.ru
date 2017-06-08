$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "lib")))
require "geminabox"

Geminabox.data = '/webapps/geminabox/data'

run Geminabox::Server
