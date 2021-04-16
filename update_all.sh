#!/bin/bash

bash tools/gen_action.sh https://easylist.to/easylist/easyprivacy.txt easylistprivacy
bash tools/gen_action.sh https://easylist.to/easylist/fanboy-social.txt social
bash tools/gen_action.sh https://secure.fanboy.co.nz/fanboy-annoyance.txt fanboy

for i in $(cat whitelist.txt); do sed -i "/^$i$/d" *.action ; done

service privoxy restart
