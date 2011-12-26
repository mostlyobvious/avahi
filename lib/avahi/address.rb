require 'avahi'
require 'avahi/entry_group'

class Avahi::Address
	attr_reader :host, :addr, :iface, :proto, :flags

	def initialize(hostname, address, iface = Avahi::IF_UNSPEC, proto = Avahi::PROTO_UNSPEC, flags = 0)
		@host  = hostname
		@addr  = address
		@proto = proto
		@iface = iface
		@flags = flags
	end

	def publish
		eg = Avahi::EntryGroup.new
		eg << self
		eg.commit
	end
end
