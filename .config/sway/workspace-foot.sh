#!/bin/bash
ws="$1"
has_foot=$(swaymsg -t get_tree | jq "[.nodes[].nodes[] | select(.name == \"$ws\") | .nodes[] | select(.app_id == \"foot\")] | length" 2>/dev/null)
if [ "$has_foot" = "0" ] || [ "$has_foot" = "null" ] || [ -z "$has_foot" ]; then
    swaymsg "workspace number $ws; exec foot"
else
    swaymsg "workspace number $ws"
fi
