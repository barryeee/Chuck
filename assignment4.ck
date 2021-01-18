// Template for common variables, etc.
128=> int bpm; //beats per minute
1::minute / bpm => dur beat; // calculate value of one beat

4 * beat => dur whole; //whole note value
beat * 2 => dur half; //half note value
beat/2 => dur  eighth; //eighth note value
beat/4 => dur sixt; // sixteenth note value
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



//Main Program

SectionA (16);


//End Program

//Function definitions
fun void SectionA (int noteLen)
{
	for (0 => int i; i < noteLen; i++)
	{
	//Percussion
	
	//Chords
	
	//Melody
	}
	return;
}
