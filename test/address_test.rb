require 'test_helper'
require 'avahi/address'

class AddressTest < Test::Unit::TestCase
	def setup
		@randname  = "%s.local" % SecureRandom.hex
		@localhost = "127.0.0.1".freeze
	end

	def test_address_publishing
		addr = Avahi::Address.new(@randname, @localhost)
		assert_not_match libc_resolver_output, /#{Regexp.quote(@localhost)}/

		addr.publish
		assert_match libc_resolver_output, /#{Regexp.quote(@localhost)}/
	end

	def libc_resolver_output
		`ping -c1 #{@randname} 2>/dev/null`
	end
end
