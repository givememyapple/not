wget "https://github.com/p1neappleXpress/OpenFlux/releases/download/node-v1.0.1/openflux-linux-amd64"
chmod +x openflux-linux-amd64
sudo ./openflux-linux-amd64 --role=exit --mode=l4 \
     --transport=boards \
    --url="https://boards.yandex.ru/whiteboard/?hash=d3cf401d147809302c35d2859a4d4e05" --debug
