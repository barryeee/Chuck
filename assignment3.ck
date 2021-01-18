//Title: Assignment 3 - Techno Beat
//Name:  Barry Eichelberger
//Date:  12/30/2020

// Template for common variables, etc.
125=> int bpm; //beats per minute
1::minute / bpm => dur beat; // calculate value of one beat

4 * beat => dur whole; //whole note value
beat * 2 => dur half; //half note value
beat/2 => dur  eighth; //eighth note value
beat/4 => dur sixteenth;

//sound chain
Gain master => dac;
SndBuf kick =>  master;
SndBuf kick2 => master;
SndBuf snare => master;
SndBuf hihat => master;
SndBuf cowbell => Pan2 cbell => dac; //set up for panning.

//set gain levels
0.4 => master.gain;
0.3 => kick.gain;
0.4=> kick2.gain;
0.3=> snare.gain;
0.2=> hihat.gain;
0.2 => cowbell.gain;


//Load and read sample files
me.dir() + "/audio/kick_01.wav" => kick.read;
me.dir() + "/audio/kick_04.wav" => kick2.read;
me.dir() + "/audio/snare_03.wav" => snare.read;
me.dir() + "/audio/hihat_02.wav" => hihat.read;
me.dir() + "/audio/cowbell_01.wav" => cowbell.read;

//intialize read position on samples
kick.samples() => kick.pos;
kick2.samples() => kick2.pos;
snare.samples() => snare.pos;
hihat.samples() => hihat.pos;
cowbell.samples() => cowbell.pos;

//Measure 1
for (0 => int i; i < 8; i++)
{
    if (i % 2 ==0)
    {
       0 => kick.pos;
       0 => kick2.pos; 
       2.0 => kick2.freq; 
    }
    if (i %2 != 0)
    {
        0 => snare.pos;
        Math.random2f(1, 3) => snare.freq;
    }
    0 => hihat.pos;
    1 => hihat.freq;
    eighth => now;
    
}
//Measure 2
for (0 => int i; i < 8; i++)
{
    if (i % 1.5 ==0)
    {
       0 => kick.pos;
       0 => kick2.pos; 
       2.0 => kick2.freq; 
    }
    if (i %3 != 0)
    {
        0 => snare.pos;
        Math.random2f(1, 3) => snare.freq;
    }
    if (i>=6)
    {
        Math.random2(-1,1) => cbell.pan;
        Math.random2f(-0.7,1.8) => cowbell.freq;
        Math.random2f(0.2,0.5) => cowbell.gain;
        0 => cowbell.pos;
    }
    0 => hihat.pos;
    1 => hihat.freq;
    eighth => now;
}
//Measure 3
for (0 => int i; i < 8; i++)
{
    if (i % 2 ==0)
    {
       0 => kick.pos;
       0 => kick2.pos; 
       2.0 => kick2.freq; 
    }
    if (i %2 != 0)
    {
        0 => snare.pos;
        Math.random2f(1, 3) => snare.freq;
    }
    0 => hihat.pos;
    1 => hihat.freq;
    eighth => now;
    
}
//Measure 4
for (0 => int i; i < 8; i++)
{
    if (i % 1.5 ==0)
    {
       0 => kick.pos;
       0 => kick2.pos; 
       2.0 => kick2.freq; 
    }
    if (i %3 != 0)
    {
        0 => snare.pos;
        Math.random2f(1, 3) => snare.freq;
    }
    if (i>=6)
    {
        Math.random2(-1,1) => cbell.pan;
        Math.random2f(-0.7,1.8) => cowbell.freq;
        Math.random2f(0.3,0.6) => cowbell.gain;
        0 => cowbell.pos;
    }
    0 => hihat.pos;
    1 => hihat.freq;
    eighth => now;
}
//Measure 5
for (0 => int i; i < 8; i++)
{
    if (i % 2 ==0)
    {
       0 => kick.pos;
       0 => kick2.pos; 
       2.0 => kick2.freq; 
    }
    if (i %2 != 0)
    {
        0 => snare.pos;
        Math.random2f(1, 3) => snare.freq;
    }
    0 => hihat.pos;
    1 => hihat.freq;
    eighth => now;
    
}
//Measure 6
for (0 => int i; i < 8; i++)
{
    if (i % 1.5 ==0)
    {
       0 => kick.pos;
       0 => kick2.pos; 
       2.0 => kick2.freq; 
    }
    if (i %3 != 0)
    {
        0 => snare.pos;
        Math.random2f(1, 3) => snare.freq;
    }
    if (i>=6)
    {
        Math.random2(-1,1) => cbell.pan;
        Math.random2f(-0.7,1.8) => cowbell.freq;
        Math.random2f(0.4,0.8) => cowbell.gain;
        0 => cowbell.pos;
    }
    0 => hihat.pos;
    1 => hihat.freq;
    eighth => now;
}
//Measure 7
for (0 => int i; i < 8; i++)
{
    if (i % 2 ==0)
    {
       0 => kick.pos;
       0 => kick2.pos; 
       2.0 => kick2.freq; 
    }
    if (i %2 != 0)
    {
        0 => snare.pos;
        Math.random2f(1, 3) => snare.freq;
    }
    0 => hihat.pos;
    1 => hihat.freq;
    eighth => now;
    
}
//Measure 8
for (0 => int i; i < 8; i++)
{
    if (i % 1.5 ==0)
    {
       0 => kick.pos;
       0 => kick2.pos; 
       2.0 => kick2.freq; 
    }
    if (i %3 != 0)
    {
        0 => snare.pos;
        Math.random2f(1, 3) => snare.freq;
    }
    if (i>=6)
    {
        Math.random2(-1,1) => cbell.pan;
        Math.random2f(-0.7,1.8) => cowbell.freq;
        Math.random2f(0.2,0.6) => cowbell.gain;
        0 => cowbell.pos;
    }
    0 => hihat.pos;
    1 => hihat.freq;
    eighth => now;
}
//Measure 9
for (0 => int i; i < 8; i++)
{
           
        Math.random2(-1,1) => cbell.pan;
        Math.random2f(-0.7,1.8) => cowbell.freq;
        Math.random2f(0.5,0.7) => cowbell.gain;
        0 => cowbell.pos;
     eighth => now;
    <<< "measure 9 - ", i>>>;
}