# Mesos DNS for Azure Container Service

A very simple docker image with a canned configuration for mesos-dns. Deploy this on as many nodes in your ACS cluster as you please.

# Usage

Usage is simple, just run the container. Because it assumes you're using ACS it will look for mesos masters on `10.0.0.5` - `10.0.0.19` (inclusive). If this matches your configuration then you don't need to apply any configuration. Simply use marathon to run the container on every slave with `bridged` networking and port 53 (tcp and udp) open.

Once you have the containers running in docker with a bridged network _on all nodes in your cluster_ you can either put `127.0.0.1` in `/etc/resolv.conf` or you can run all your containers with the `--dns=127.0.0.1` option.
