#!/bin/bash
curl -s https://www.klart.se/se/blekinge-l%C3%A4n/v%C3%A4der-karlskrona/ | sed -e '/klart.pulseData.object\ =\ {/,/}/!d' | grep -Eo "*.'[0-9]*'" | head -n1 | sed -e 's/'\''//g'
