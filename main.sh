sudo tee /etc/systemd/system/transport.service > /dev/null << EOF
[Unit]
Description=Listen Join Service
After=network.target

[Service]
# Удалите sudo, nohup; используйте OOMScoreAdjust для замены choom
OOMScoreAdjust=-1000
# Обратите внимание: если proxychains-q является исполняемым файлом, укажите полный путь
ExecStart=/usr/bin/proxychains-q /root/openflux-linux-amd64 --config=/root/flux-ok/exit.conf
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl restart listen-join.service
sudo systemctl status listen-join.service  # Проверьте, есть ли ошибки
