### GemInABox Dockerized deployment for layer-geminabox

Geminabox is a very simple private rubygems server where you can store your private gems. This is a Debian based image with Geminabox listening on port 9292.


#### Installing and executing

Here is the code to start and test image at your workstation :+1:

DOWNLOADING
```
git clone https://github.com/rahworkx/geminabox-dockerized
```

BUILDING
```
docker build -t workstation:geminabox .
```
RUNNING
```
docker run -d -p 9292:9292 --name geminabox workstation:geminabox
```

OPTIONS
Run this to store container data locally on server. 
```
sudo docker run -d --name geminabox -v /Path_For_Data:/webapps/geminabox/data -p 9292:9292 workstation:geminabox
```

#### Coming Soon....

Authentication 
More Options
