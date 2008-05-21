#!/bin/sh
#	$Id: conic.sh,v 1.1 2008-05-21 01:31:49 guru Exp $
#
# Check clipping of line for a global conic plot

. ../functions.sh
header "Test psxy for clipping lines with periodic conic boundary"

ps=conic.ps
pscoast -R0/360/30/70 -JL180/50/40/60/6i -Gred -Dc -B30g30 -P -K > $ps
psxy -R -J -O -W2p << EOF >> $ps
30	50
-30	45
EOF

rm -f .gmtcommands4

pscmp
