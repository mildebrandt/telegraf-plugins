# Instructions
## Build telegraf
```bash
go get github.com/influxdata/telegraf/
cd ~/go/src/github.com/influxdata/telegraf/
git checkout 1.13.3
make
./scripts/build.py --package --platform=linux --arch=amd64 --build-tags=goplugin
```

```bash
go get github.com/mildebrandt/telegraf-plugins/
cd ~/go/src/github.com/mildebrandt/telegraf-plugins/
cp ~/go/src/github.com/influxdata/telegraf/build/telegraf_1.13.3-1_amd64.deb ./telegraf
make telegraf
```

## Run example plugin
```bash
make
docker run -it --rm --name=telegraf -v $PWD/telegraf.conf:/etc/telegraf/telegraf.conf:ro -v $PWD/telegraf-plugins.so:/usr/lib/telegraf-plugins/telegraf-plugins.so:ro telegraf:plugin-support --test
```
