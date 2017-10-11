$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "lib")))
require "rubygems"
require "geminabox"

Geminabox.data = '/webapps/geminabox/data'

use Rack::Auth::Basic, "GemInAbox" do |username, password|
  'SecureUsername' == username && 'SecurePassword' == password
end

run Geminabox::Server
