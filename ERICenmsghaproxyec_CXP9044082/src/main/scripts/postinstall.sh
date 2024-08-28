#!/bin/sh
logger "Running haproxy-ec postinstall"

readonly LOG_TAG="HAPROXY_EC_POST_INSTALL"

function check_haproxy_config_was_installed ()
{
    logger -s -t "${LOG_TAG}" -p user.info "Checking if haproxy config was installed"

    if [ -f /etc/init.d/haproxy-enm ]; then
       echo "The haproxy-enm exists."
       logger -s -t "${LOG_TAG}" -p user.info "haproxy config was installed."
    fi

}

check_haproxy_config_was_installed
rc=$?
echo "Return code: $rc"

exit 0
