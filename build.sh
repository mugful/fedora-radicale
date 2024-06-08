#!/bin/bash

set -euxo pipefail

dnf -y install radicale3
dnf clean all

groupmod -g 2401 radicale
usermod -u 2401 radicale
chown -R radicale:radicale /var/lib/radicale
