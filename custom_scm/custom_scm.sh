set -v
wget https://raw.githubusercontent.com/solanolabs/open_source_files/master/scipy/solano.yml -O solano.yml
sed -i -e "s/\$ZULIP_STREAM/$ZULIP_STREAM/g" solano.yml
