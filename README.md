# ABOUT
a setup that runs pi/opencode in a container and binds the `dev` dir from
the hostsystem to the container.

# INSTALL
1. create API key: https://aqueduct.cc.univie.ac.at/aqueduct/management/tokens/
2. `echo 'AQUEDUCT_API_KEY="here-goes-the-key-from-step-1"' >> .env`
3. `podman-compose build`
4. `podman-compose up`
5. `podman exec -it aqueduct-app bash -c pi`
