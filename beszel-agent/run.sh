#!/usr/bin/with-contenv bashio

DROPBACK_VERSION=$(cat VERSION)
PUBLIC_KEY="$(bashio::config 'public_key')"

# add date to default bashio log timestamp
declare __BASHIO_LOG_TIMESTAMP="%Y-%m-%d %T"

bashio::log.info "Beszel-Agent $DROPBACK_VERSION"

PORT=45876 PUBLIC_KEY="$PUBLIC_KEY" ./beszel-agent
