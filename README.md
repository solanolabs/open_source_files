![Solano Labs Logo](https://www.solanolabs.com/assets/solano-labs-1cfeb8f4276fc9294349039f602d5923.png)
# open_source_files
Each folder contains a yml file that can be added to the upstream repo to run its test.
The custom_enumeration folder contains an example of a CE script that can be used to locally add a yml to build while its running.

#Solano CI
[Solano CI](https://www.solanolabs.com/) is a hosted continuous deployment platform that runs your build and test suites in the cloud, in parallel. Your tests run isolated in freshly prepared workers that are automatically configured with real database and search engine instances to match your development and production environments. Solano CI also supports parallel test running in our cloud even before you push to a shared branch.


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
