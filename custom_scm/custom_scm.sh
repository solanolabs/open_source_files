set -v
wget https://raw.githubusercontent.com/solanolabs/open_source_files/master/scipy/solano.yml -O solano.yml
cat >>solano.yml <<EOL
notify:
- channel: email
  trigger-on:
    - failed
    - error
    - setupfailed
    - unconfigured
    - checkoutfailed
  branch: master
  subject: "%repo%"
  body: "Build failed with %error-count% error(s) and %passed-count% success(es) https://ci.solanolabs.com:443/reports/%build-id%"
  recipients: $ZULIP_STREAM
EOL
