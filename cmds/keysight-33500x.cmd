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
#
#@field TYPE
#@type STRING
#The type of the device, eg 33522B


#Specifying the TCP endpoint and port name
drvAsynIPPortConfigure("$(PREFIX)-asyn-port", "$(IPADDR):$(IPPORT)")
 
#Load your database defining the EPICS records
dbLoadRecords(keysight-$(TYPE).db, "DEVICE=$(PREFIX), PORT=$(PREFIX)-asyn-port")
