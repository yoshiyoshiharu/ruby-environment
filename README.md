# Usage
```
docker build rbenv --no-cache 
docker run -it --name [container name] -v [absolute path to mount]:/workdir rbenv /bin/bash

rbenv install [ruby version]
rbenv global [ruby version]
```