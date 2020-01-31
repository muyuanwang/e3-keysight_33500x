require asyn,4.36.0
require stream,2.8.10
require keysight_33500x,1.0.1

epicsEnvSet("STREAM_PROTOCOL_PATH","$(keysight_33500x_DB)")

epicsEnvSet("PREFIX","SRFLAB-33522B")
epicsEnvSet("IPADDR","172.30.155.17")
epicsEnvSet("IPPORT","5025")
epicsEnvSet("TYPE","33522B")

#Specifying the TCP endpoint and port name
drvAsynIPPortConfigure("$(PREFIX)-asyn-port", "$(IPADDR):$(IPPORT)")
 
#Load your database defining the EPICS records
dbLoadRecords("keysight-33500x-source.template", "DEVICE=$(PREFIX), PORT=$(PREFIX)-asyn-port, SOURCE=1")
dbLoadRecords("keysight-33500x-source.template", "DEVICE=$(PREFIX), PORT=$(PREFIX)-asyn-port, SOURCE=2")
dbLoadRecords("keysight-33500x-dest.template", "DEVICE=$(PREFIX), PORT=$(PREFIX)-asyn-port, DEST=1")
dbLoadRecords("keysight-33500x-dest.template", "DEVICE=$(PREFIX), PORT=$(PREFIX)-asyn-port, DEST=2")
dbLoadRecords("keysight-33500x.template", "DEVICE=$(PREFIX), PORT=$(PREFIX)-asyn-port")

iocInit()

