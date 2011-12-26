require 'avahi'
require 'avahi/server'

class Avahi::EntryGroup
	def initialize
		server = Avahi::Server.new
		@entry_group = server.create_entry_group
	end

	def <<(obj)
		iface, proto, flags = obj.iface, obj.proto, obj.flags
		case obj
		when Avahi::Address
			@entry_group.AddAddress(iface, proto, flags, obj.host, obj.addr)
		end
	end

	def commit
		@entry_group.Commit
	end
end
