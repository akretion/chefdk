# chefdk

First create the Berksfile and .kitchen.yml files; then do

```
docker run -ti -v "$HOME/.ssh:/root/.ssh_host" -v "$(pwd)/Berksfile:/Berksfile" -v "$(pwd)/.kitchen.yml:/.kitchen.yml" akretion/chefdk
```
