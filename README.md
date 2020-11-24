## dOCKER DEMO APP

#### This app will demostrap your how to work with docker + rails in the local development enviroment by using docker build and docker run command


#### Usage

```
docker build -rm -t rails-image .
```

```
docker run -d --name rails-app -p 3000:3000 --net host rails-image
```
