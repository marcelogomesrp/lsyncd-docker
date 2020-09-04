# lsyncd
docker build -t marcelogomesrp/lsyncd:latest .

docker run -d --user 1000:1000 -v /data/tmp/source:/source -v /data/tmp/target:/target marcelogomesrp/lsyncd:latest

