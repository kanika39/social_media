docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID kanikagupta374/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID kanikagupta374/$JOB_NAME:latest

docker push kanikagupta374/$JOB_NAME:$BUILD_ID

docker push kanikagupta374/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID kanikagupta374/$JOB_NAME:$BUILD_ID kanikagupta374/$JOB_NAME:latest
