Clone this repo, `cd` to the dir, then use the following command to run this `Dockerfile` file .
```docker run -d --name=gitblit -p 8080:8080 -p 8443:8443 -p 9418:9418 -p 29418:29418 -v /data/gitblit:/opt/gitblit-data witnessus/gitblit-arm64:0.0.1```
NOTICE: 
  1. Change the gitblit volume path `/data/gitblit `to your own path.
  2. I use the agent to pull docker images, because I cannot access docker registry directly.
