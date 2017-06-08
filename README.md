### GemInABox Dockerized deployment for layer-geminabox

Geminabox is a very simple private rubygems server where you can store your private gems. This is a Debian based image with Geminabox listening on port 9292.


#### Installing and executing

Here is the code to start and test image at your workstation :+1:

BUILDING
```
docker build -t workstation:geminabox .
```
RUNNING
```
docker run -d -p 9292:9292 --name geminabox workstation:geminabox
```

OPTIONS
Storring your saved gems to local DIR
```
docker run -d -v /path_for_stored_gems:/webapps/geminabox/data --name geminabox -p 9292:9292 -P -h geminabox
```

#### Coming Soon....

Authentication 
More Options
