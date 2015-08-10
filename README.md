# chefdk

First create the Berksfile and .kitchen.yml files; then do

```
docker run -ti -v "$(pwd)/Berksfile:/Berksfile" -v "$(pwd)/.kitchen.yml:/.kitchen.yml" akretion/chefdk
```
