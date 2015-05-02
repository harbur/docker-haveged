# docker-haveged

Docker Haveged is a container as an entropy gathering service.

Current Version: `1.7c-1`

## Use case

In case you need an entropy gathering service on your docker host but don't want to / can't install locally an entropy gathering service.

The service makes more sense on Cloud servers and more specifically on CoreOS servers where you cannot install locally services.

## Checklist

The purpose of the service is to make sure you have available entropy on your host. To check if you are running low:

```
cat /proc/sys/kernel/random/entropy_avail
```

If the number is below `1000` then it is probably depleted.

## Quickstart

To run the container:

```
docker run --privileged -d harbur/haveged:1.7c-1
```

## Test Entropy

In order to test the quality of entropy you can use rngtest
```
docker run --rm --privileged --entrypoint bash harbur/haveged:1.7c-1 -c 'cat /dev/random | rngtest -c 1000'
```
