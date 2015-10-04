# akretion/chefdk: a Docker wrapper around Test Kitchen

First create the Berksfile and .kitchen.yml files; then do

```
docker run -ti -v "$HOME/.ssh:/root/.ssh_host" -v "$(pwd)/Berksfile:/Berksfile" -v "$(pwd)/.kitchen.yml:/.kitchen.yml" akretion/chefdk
```

Any extra argument will be passed to the kitchen command.

The primary motivation behind this image is to avoid to clutter dev machines with full blown Ruby/Chef installations and avoid possible long compilation steps.
