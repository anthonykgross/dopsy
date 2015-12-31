# DoPSy : (DOcker, Php7 & SYmfony3)

## Requierements: 
- Docker 1.9
- Docker Compose 1.4

## Directory 
- docker    // Images docker & conf (Php7, ngninx, supervisor & logs)
- docs      // Documentations
- src       // Symfony3 - Project source code

## How to install 

```console
chmod +x create-images.sh
./create-images.sh
```
```console
chmod +x install.sh
./install.sh
```
```console
docker-compose up -d
```