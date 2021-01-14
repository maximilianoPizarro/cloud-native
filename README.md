##Stack para Cloud Native RedHat OPEN

1. Crear volumen:

     docker volume create source

     La distro wsl2 para Windows lo crea en:

     \\wsl$\docker-desktop-data\version-pack-data\community\docker\volumes

2. Generar build e ingresar al container:

     docker-compose up -d --build

     docker run -it -u 0 cloud-native /bin/bash

3. El codigo se actualizará en:

     /usr/local/bin/app/src