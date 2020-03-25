# enviro-collector-backend
Demo backends for receiving and visualizing Edata from a device running [Enviro Collector].

As this project is quite suitable for testing multiple backend technologies, I'll be adding different ways of getting/processing/visualizing data sent from [Enviro Collector].

Here's the list of the added backends:

* [Node-RED + InfluxDB + Grafana](#node-red---influxdb---grafana)


## Node-RED + InfluxDB + Grafana
### Description
This backend has near to zero code and it's based on configuring diferent platforms:

* [InfluxDB]: a really good database for storing time based data. Just like sensor readings :)
* [Node-RED]: an automation tool we use here to publish an HTTP POST endpoint, validate, extract and store sensor readinds in InfluxDB.
* [Grafana]: a visualization tool we use for building a dashboard where data can be watched properly.

### Deployment
Just clone this repo, get into the [nodered-influxdb-grafana](./nodered-influxdb-grafana) directory and run the `install.sh` script. It will pull docker images, run the containers and set some params needed in Node-RED.

You can then access the platforms according to this data (assuming you are running at `localhost`):

| Platform | URL                         | User  | Password      |
|----------|-----------------------------|-------|---------------|
| Node-RED | http://localhost:1880/admin | admin | adminPassw0rd |
| Grafana  | http://localhost:3000/      | admin | adminPassw0rd |

You can find more info about this backend in [its detailed README file](./nodered-influxdb-grafana/README.md).


[Enviro Collector]:https://github.com/luixal/enviro-collector
[InfluxDB]:https://www.influxdata.com/products/influxdb-overview/
[Node-RED]:https://nodered.org/
[Grafana]:https://grafana.com/
