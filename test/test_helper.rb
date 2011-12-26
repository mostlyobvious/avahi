require 'test/unit'
require 'securerandom'

raise "Sorry, you need Avahi daemon running." unless `ps aux |grep [a]vahi-daemon`
