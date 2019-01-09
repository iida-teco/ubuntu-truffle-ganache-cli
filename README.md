# truffle and ganache-cli on Ubuntu

truffle@v4 and ganache-cli on Ubuntu docker container.

## build

```
$ docker build -t ubuntu-truffle-ganache-cli .
```

## run docker container

Mount the current directory in `/dapps` and start up the container.  
Add the `-p` option for the required port.

```
$ docker run -it --mount type=bind,src=$(pwd)/,dst=/dapps -p 8545:8545 ubuntu-truffle-ganache-cli
```

## run ganache-cli

Create `/var/ganache` for data persistence.  
Change `--mnemonic` option to anything you like.

```
# mkdir -p /var/ganache
# ganache-cli --host=0.0.0.0 --db=/var/ganache --mnemonic="purse flower cactus beauty fish runway view panic unhappy eight organ jump" --networkId=5777 > /var/ganache/cli.log 2>&1 &
```
