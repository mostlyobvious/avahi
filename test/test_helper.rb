require 'test/unit'
require 'securerandom'

raise "Sorry, you need Avahi daemon running." if `ps aux |grep [a]vahi-daemon`.empty?
