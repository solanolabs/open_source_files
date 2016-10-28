# open_source_files
each folder contains a yml file that can be added to the named repo to run its test.
custom_enumeration contains an exaple of the custom_enumeration script that can be used to add a yml to an open_source's upstream repo


# queue router
queue should be set to ``opensource_single``

# custom_scm should be set to 
```
set -v
wget https://raw.githubusercontent.com/solanolabs/open_source_files/master/scipy/solano.yml -O solano.yml
sed -i -e "s/\$ZULIP_STREAM/$ZULIP_STREAM/g" solano.yml
```
with the url replaced to point at the desired yml file

# current schedule
Builds are currently schedule to run daily at 9am

# notifications
```
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
  body: "Build failed with %error-count% error(s) and %passed-count% success(es)
  https://ci.solanolabs.com:443/reports/%build-id%"
  recipients: $ZULIP_STREAM
```
