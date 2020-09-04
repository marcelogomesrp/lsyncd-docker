# lsyncd
docker build -t marcelogomesrp/lsyncd:latest .

docker run -d --name sync -u 1000:1000 -v /data/tmp/source:/source -v /data/tmp/target:/target marcelogomesrp/lsyncd:latest

