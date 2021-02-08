# RUN ddclient in Docker to update your Dyn hosts

To run ddclient in a docker container simply insert your dyn username and password as well as the hosts you want to keep updated into **ddclient.conf_template**.

After that simply run:

```
docker build -t ddclient:1.0 .
docker run -d --name ddclient ddclient:1.0
```
