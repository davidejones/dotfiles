#!/usr/bin/env bash
set -euxo pipefail

curl -L "https://discord.com/api/download?platform=linux&format=tar.gz" -o /tmp/discord-latest.tar.gz
tar -xvzf /tmp/discord-latest.tar.gz -C /opt
chown -R davidejones:davidejones /opt/Discord/
rm /tmp/discord-latest.tar.gz

