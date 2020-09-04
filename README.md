# lsyncd
docker build -t marcelogomesrp/lsyncd:latest .
docker run -d -v /data/tmp/source:/source -v /data/tmp/target:/target marcelogomesrp/lsyncd:latest

