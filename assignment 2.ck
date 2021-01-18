//Title: Assingment #2 - etude no.2
//Name: Barry Eichelberger
//Date: 12/20/2020
<<< "barry Eichelberger" >>>;
//sound chain
SinOsc s => Pan2 p => dac;
SinOsc r => Pan2 p2 => dac;
SinOsc r2 => Pan2 p3 => dac;
SinOsc r3 => Pan2 p4 => dac;
TriOsc bass => dac;
//define and init variables
-0.75 => p.pan;
-0.25 => p2.pan;
0.25 => p3.pan;
0.75 => p4.pan;
0 => int reps;
750
::ms => dur beat;
1::second => dur noteLen;
//melody array
[60,64,67,72,62,65,69,72,76] @=> int melody[];
//[60,64,67,72,74] @=> int melody[];
[0,0,0,0] @=> int reply[];
//loop a bit

while ( reps < 38 )
{
    Math.random2(0, melody.cap()-1) => int i; //generate randon note
    if (reps > 4) //set reply notes
    {
        Std.mtof(reply[0]) => r.freq;
        Std.mtof(reply[1]) => r2.freq;
        Std.mtof(reply[2]) => r3.freq; // last value in array to r.freq
    for ( 0 => int j; j < reply.cap()-1; j++)
    {
       {
           <<< j, reply[j]>>>;
           reply[j] => reply[j+1]; //move values up the array
           
       }
    }
}
    melody[i] => reply[0]; // store current note in first location
    <<< "i", i>>>;
// set gain levels 
    0.175 => s.gain;
    0.175 => r.gain;
    0.175 => r2.gain;
    0.175 => r3.gain;
    0.1 => bass.gain;
// set memlody note
    Std.mtof(melody[i]) => s.freq;
    melody[i] - 19 => int bassnote;// bassnote 1 octave & 5th lower
    Std.mtof(bassnote) => bass.freq;
    beat => now;
    reps++;  //increase rep count
 }
 //fade out
    for ( 0.175 => float i; i > 0; i - .001 => i)
    {
    i => s.gain;
        i => r.gain;
        i => r2.gain;
        i => r3.gain;
        i => bass.gain;
        
    0.01::second => now;
    }
  