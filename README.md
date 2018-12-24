# Racket Scripts

## BUILDING
you could just use raco to build the executable and then `mv` it where it needs to go

or if you want you can use `make_executable.sh` in this repo __WARNING__ 
that it does mv to /usr/local/bin/ so if you were to do something like:

```sh
$ touch pip3.6.rkt
$ echo "(display \"hello world today I am going to over-write my pip installation\")" > pip3.6.rkt
$ ./make-executable pip3.6.rkt
```

you will effectively overwrite `/usr/local/bin/pip3`.

My typical naming convention for a script is thing.rkt or do-a-thing.rkt and usually not
do.a.thing.rkt so `make_executable only grabs the first part of a string with `.` chars in them

## scripts

### rng

#### building
```sh
$ raco exe rng.rkt # you can also do a && mv rng /your/favorite/path/to/executables
```

#### useage

random [low high]
```sh
$ rng 1 5 # 3
```

random [2 high]
```sh
rng 2 
```

random [0 100]
```sh
rng
```
