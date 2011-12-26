require 'avahi/version'
require 'dbus'

module Avahi
  IF_UNSPEC              = -1
  PROTO_UNSPEC           = -1
  PROTO_INET             = 0
  PROTO_INET6            = 1
  DBUS_AVAHI             = "org.freedesktop.Avahi"
  DBUS_AVAHI_SERVER      = "org.freedesktop.Avahi.Server"
  DBUS_AVAHI_ENTRY_GROUP = "org.freedesktop.Avahi.EntryGroup"
end
