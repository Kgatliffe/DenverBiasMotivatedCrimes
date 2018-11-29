set ORIG;   # origins
set DEST;   # destinations

param cost{DEST,ORIG} >= 0;
var Assign{DEST,ORIG} >= 0;

minimize Total_Cost:
sum{i in DEST, j in ORIG} cost[i, j] * Assign[i, j];
subject to Dest_limit{j in ORIG}:
sum{i in DEST} Assign[i, j] = 20/35;
subject to Orig_limit{i in DEST}:
sum{j in ORIG} Assign[i, j] = 1;