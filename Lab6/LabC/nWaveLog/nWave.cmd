wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/user2/vcad19/vcad1968/lab6/lab6-tmp/Lab6/LabC/RAM.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/RAM_tb"
wvGetSignalClose -win $_nWave1
wvExit
