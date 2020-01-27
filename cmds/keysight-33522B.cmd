#@field IPADDR
#@type STRING
#IP or hostname of the TCP endpoint.
#
#@field IPPORT
#@type INTEGER
#Port number for the TCP endpoint.
#
#@field PREFIX
#@type STRING
#Prefix for EPICS PVs.

requireSnippet(keysight-33500x.cmd, "IPADDR=$(IPADDR),IPPORT=$(IPPORT),PREFIX=$(PREFIX),TYPE=33522B")
