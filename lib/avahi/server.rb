require 'avahi'

class Avahi::Server
	def initialize
		@dbus   = DBus::SystemBus.instance
    @server = @dbus.introspect(Avahi::DBUS_AVAHI, '/')[Avahi::DBUS_AVAHI_SERVER]
	end
end
