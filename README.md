![Solano Labs Logo](https://www.solanolabs.com/assets/solano-labs-1cfeb8f4276fc9294349039f602d5923.png)
# open_source_files
Each folder contains a yml file that can be added to the upstream repo to run its test.
The custom_enumeration folder contains an example of a CE script that can be used to locally add a yml to build while its running.


# queue router
The queue should be set to ``opensource_single`` for these repos

# current schedule
Builds are currently schedule to run daily at 9am

# notifications
This is the current notification blob added to the yamls
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
