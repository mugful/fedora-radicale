#!/bin/bash

set -euxo pipefail

dnf -y install radicale3
dnf clean all

groupmod -g 5232 radicale
usermod -u 5232 radicale
chown -R radicale:radicale /var/lib/radicale
