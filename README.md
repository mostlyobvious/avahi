Ruby wrapper based on DBUS for interacting with Avahi daemon. Avahi is a
Linux implementation of mDNS/DNS-SD.

Current state:

- mDNS record publishing works

Example usage:

	require 'avahi/address'

	addr = Avahi::Address.new('super-duper-host.local', '127.0.0.1')
	addr.publish

	`ping -c1 super-duper-host.local`.split("\n").first # => "PING super-duper-host.local (127.0.0.1) 56(84) bytes of data."
