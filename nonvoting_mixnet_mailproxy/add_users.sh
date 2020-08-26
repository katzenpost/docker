#!/bin/sh
set -x
# Because mailproxy doesn't seem to register the users in the providers with
# the configuration file, run the commands to register them.
# It ignores the `-f` configuration file and create a new one in
# $HOME/.mailproxy/mailproxy.toml
docker exec nonvoting_mixnet_mailproxy_mailproxy_1 /go/bin/mailproxy -f /conf/mailproxy.toml -r -authority 172.28.1.2:29483 -authorityKey "o4w1Nyj/nKNwho5SWfAIfh7SMU8FRx52nMHGgYsMHqQ=" -registrationAddr 172.28.1.3:36968 -registrationWithoutHttps -provider provider1 -providerKey "2krwfNDfbakZCSTUUZYKXwdduzlEgS9Jfwm7eyZ0sCg=" -account alice
# And rewrites that file when adding a second user
docker exec nonvoting_mixnet_mailproxy_mailproxy_1 /go/bin/mailproxy -f /conf/mailproxy.toml -r -authority 172.28.1.2:29483 -authorityKey "o4w1Nyj/nKNwho5SWfAIfh7SMU8FRx52nMHGgYsMHqQ=" -registrationAddr 172.28.1.4:36967 -registrationWithoutHttps -provider provider2 -providerKey "imigzI26tTRXyYLXujLEPI9QrNYOEgC4DElsFdP9acQ=" -account bob
