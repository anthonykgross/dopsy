# DoPSy : (DOcker, Php7 & SYmfony3)

## Requierements: 
- Docker 17.04-ce
- Docker Compose 1.12

## How to install 

Setup the project and run the cluster (web + mysql + storage)
```console
make start
```

Debug the current container
```console
make debug
```

Stop the cluster
```console
make stop
```

Need help
```console
make
```

## Development 

- Don't miss to add 127.0.0.1 dopsy.local in /etc/hosts (Unix)
- Don't miss to add <VM ip> dopsy.local in /etc/hosts (OSX) or in Windows/System32/drivers/etc/hosts (Win)

## Creator

**Anthony K GROSS**
- <http://anthonykgross.fr>
- <https://twitter.com/anthonykgross>
- <https://github.com/anthonykgross>
- <http://www.twitch.tv/anthonykgross>

## Technologies
- PHP7 - Symfony 3 - Composer - PhpUnit
- MariaDb/MySql
- Thanks to [en-marche.fr](https://github.com/EnMarche/en-marche.fr)