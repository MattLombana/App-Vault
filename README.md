# App-Vault

## Running the Containers

1. Run `./Config/gen_certs.sh` to generate the SSL certificates (alternatively,
   add custom certs to the private folder)
3. Update the following volume mounts in [docker-compose.yml](./Docker/docker-compose.yml)
    * `../Data/file:/vault/file`
    * `../Data/logs:/vault/logs`
    * `../Data/certs:/vault/certs`
4. Run `docker-compose -f ./Docker/docker-compose.yml up -d`

## First Time Setup

1. Visit <https://your-ip:8200>


# TODO

* Configure telemetry in the vault config [link](https://www.vaultproject.io/docs/configuration/telemetry)
