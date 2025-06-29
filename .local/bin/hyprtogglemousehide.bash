#!/bin/bash

chset=$(hyprctl getoption cursor:hide_on_key_press | grep int | awk '{print $2}')
case $chset in
	1)
		hyprctl keyword cursor:hide_on_key_press false;;
	0)
		hyprctl keyword cursor:hide_on_key_press true;;
esac

