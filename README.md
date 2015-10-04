# this is a Docker wrapper around ChefDK Ruby tools

## for Test Kitchen:

First create the Berksfile and .kitchen.yml files; then do

```
docker run -ti -v "$HOME/.ssh:/root/.ssh_host" -v "$(pwd)/workspace" akretion/chefdk kitchen help
```


## for the berks command:

```
docker run -ti -v "$(pwd)/:/workspace" akretion/chefdk berks help
```

The primary motivation behind this image is to avoid to clutter dev machines with full blown Ruby/Chef installations and avoid possible long compilation steps.
