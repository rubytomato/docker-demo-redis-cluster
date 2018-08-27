# docker-demo-redis-cluster

### build

```text
> docker-compose build
```

```text
> docker-compose build --no-cache
```

### up

```text
> docker-compose up -d
```

### redis-server

**bash**

```text
> docker-compose exec redis01 bash --login
```

### redis-cli

**redis-cli**

```text
> docker-compose exec redis01 redis-cli -c -a foobared
```

### cluster addslots

cluster addslots 0 1 2 3 4 5 6 7 8 9 10

cluster addslots 11 12 13 14 15 16 17 18 19 20

cluster addslots 21 22 23 24 25 26 27 28 29 30


### cluster meet

