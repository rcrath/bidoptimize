# bidoptimize
optimize a windows 97 computer for real time audio in bidule

THis is a windows script/batchfile for optimizing a multicore processor to work with plogue bidule or another real-time audio application running on a single core in real time mode.  This script does several things.  

First, it closes down uneeded services and programs that swipe processor cycles and make interruptiions that can cause glitches in real time, low latency audio.  You may need them for other things though, so there is a restore script too.  You will probably need to tweak the script for your own particular setup, but it should get the major windows services you want to close down.  Be forewarned, it turns off networking, so your browser won't get a connection until you run the restore script.

Second, it launches any helper files you may need, but keeps them off the first two processors of an eight core machine.  More on this in a minute.  Your helper apps will vary from mine if you need them at all.  I fire up midi-ox to make sure all my midi is working right, a max msp patch to handle some OSC signals I use, and a helper app for my mouse pedal so I can click things with my foot.  

The third thing it does is a little arcane.  Bidule has multicore capabilities, but because it is a freely configurable graph, it is too complex to calculate distributed core use on the fly.  With complex patches, it becomes difficult or impossible (at least I have not been able to figure it out) to assign cores manually without breaking the audio.  As a result, bidule runs largely on one core.  hence the need to kill all the cpu hogs I can at the outset.  the /AFFINITY FC in the helper commands keep them off the first two cores so they do not add to the problem.  the /realtime switch on bidule runs it at the highest priority, which can help avoid glitches and allow you to decrease latency.  the tradeoff is a little stability, but I have had no unusual problems because of it.  

You may not need parts 2 and three of the script, but the realtime switch is useful and much easier than setting all this stuff by hand in the process explorer powertoy, which is what I used to do.

Enjoy, and if you improve it, do a git pull request and merge it back in!
