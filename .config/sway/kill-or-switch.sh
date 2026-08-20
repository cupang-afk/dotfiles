#!/bin/bash
swaymsg kill
sleep 0.2
current_ws=$(swaymsg -t get_workspaces | jq '.[] | select(.focused) | .name' -r)
count=$(swaymsg -t get_tree | jq "[.nodes[].nodes[] | select(.name == \"$current_ws\") | .nodes[]] | length" 2>/dev/null)
if [ "$count" = "0" ] || [ "$count" = "null" ] || [ -z "$count" ]; then
    swaymsg "workspace back_and_forth"
fi
