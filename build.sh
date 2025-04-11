#!/bin/bash

set -euxo pipefail

groupadd -g 5232 radicale
useradd -u 5232 -g 5232 radicale

dnf -y install radicale3
dnf clean all

chown -R radicale:radicale /var/lib/radicale
