ver=`cat app/package.json | sed -n 3p | awk -F'"' '{print $4}'`
echo "build siyuan $ver for z2s" 
docker build --platform=linux/arm64/v8 -f Dockerfile -t gongniu/test:$ver .
docker push gongniu/test:$ver
docker tag gongniu/test:$ver gongniu/test:latest
docker push gongniu/test:latest