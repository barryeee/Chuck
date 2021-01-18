//Title: Hello Chuck! ( Assignment 1)
//Name:  Barry Eichelberger
//Date:  12/14/2020

<<< "Barry Eichelberger - Assignment 1" >>>;

// Set up Spound Network
SinOsc s => dac;
SinOsc third => dac;
SinOsc fifth => dac;
SqrOsc q => dac;
SqrOsc qthird => dac;
SqrOsc qfifth => dac;
// Init variables
0.0 => s.gain;
0.0 => third.gain;
0.0 => fifth.gain;
0.0 => q.gain;
0.0 => qthird.gain;
0.0 => qfifth.gain;

// Play Simple Intervals
for (220 => float f; f <= 880; f + 110 => f)
{
    //apply attack "envelope"   
    0.0 => float mygain;
    for ( mygain => float i; i <0.6; i + .001 => i)
    {
       i => s.gain;
       f => s.freq;
       0.0006::second => now;
    }
    //apply simple release "envelope"
    0.6 => mygain;
    for ( mygain => float i; i > 0; i - .001 => i)
    {
    i => s.gain;
    f  => s.freq;
    0.0006::second => now;
    }
 }
 //Play a few simple chords
 // Set the gain
 0.3 => s.gain;
 0.3 => third.gain;
 0.3 => fifth.gain;
 // play the progession up
 for (220 => float f; f<= 660; f + 110 => f)
 {
      f => s.freq;
      f + 110 => third.freq;
      f + 220 => fifth.freq;
      1::second => now;
 }
 
 //Play the progession down.
 for (660 => float f; f>= 220; f - 110 => f)
 {
      f => s.freq;
      f + 110 => third.freq;
      f + 220 => fifth.freq;
      1::second => now;
 }
 //set gain levels
 0.25 => s.gain;
 0.25 => third.gain;
 0.25 => fifth.gain;
 0.05 => q.gain;
 0.05 => qthird.gain;
 0.05 => qfifth.gain;
 //play continous sweep from 220 to 660hz
 for (220 => float f; f<= 660; f + 0.01 => f)
 {
      f => s.freq;
      f + 110 => third.freq;
      f + 220 => fifth.freq;
      
      f  => q.freq;
      f + 110 => qthird.freq;
      f + 220 => qfifth.freq;
      // set gain levels
      
      0.0001::second => now;
 }
 //play continous sweep from 220 to 660hz
 for (660 => float f; f>= 220; f - 0.01 => f)
 {
      f => s.freq;
      f + 110 => third.freq;
      f + 220 => fifth.freq;
      
      f  => q.freq;
      f + 110 => qthird.freq;
      f + 220 => qfifth.freq;
      // set gain levels
      
      0.0001::second => now;
 }