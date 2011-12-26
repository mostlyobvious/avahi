require 'avahi'

class Avahi::Server
	def initialize
		@dbus   = DBus::SystemBus.instance
		@server = @dbus.introspect(Avahi::DBUS_AVAHI, '/')[Avahi::DBUS_AVAHI_SERVER]
	end

	def create_entry_group
		@dbus.introspect(Avahi::DBUS_AVAHI, @server.EntryGroupNew.first)[Avahi::DBUS_AVAHI_ENTRY_GROUP]
	end
end
