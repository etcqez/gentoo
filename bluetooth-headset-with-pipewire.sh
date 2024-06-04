# package.use: media-video/pipewire system-service pipewire-alsa

# using alsa instead of pulseaudio
sudo emerge --ask media-sound/bluez-alsa
sudo systemctl  enable --now bluealsa.service

# service
sudo usermod -aG pipewire f
systemctl --user disable pulseaudio.socket pulseaudio.service
systemctl --user enable --now pipewire-pulse.socket wireplumber.service
systemctl --user enable --now pipewire-pulse.service
systemctl --user enable --now pipewire.service
systemctl --user daemon-reload
sudo usermod -rG audio f
