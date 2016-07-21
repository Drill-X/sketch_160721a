import ddf.minim.*;       
Minim minim = new Minim(this); 
/**
 We're going to use BANANAS to stop and start songs. Different bananas will play different songs.
 If you haven't used the Makey Makey before, check out this guide before you start: http://makeymakey.com/howto.php
 
 1. Download a song from YouTube using: youtube-mp3.org
 2. Plug the Makey Makey into the bananas.
 3. Finish the Processing code below so that touching a banana will start and stop a song.
 **/

AudioPlayer yellowSubmarine;              //1. Change to the name of your song
AudioPlayer yellowSubmarine2;
AudioPlayer yellowSubmarine3; 
boolean yellowSubmarineIsStopped = true; 
boolean yellowSubmarine2IsStopped = true;
boolean yellowSubmarine3IsStopped = true;


void loadSongs() {
  yellowSubmarine = minim.loadFile("mine.mp3");  //2. Drop mp3 onto this sketch and put its name here
    yellowSubmarine2 = minim.loadFile("mine2.mp3");
    yellowSubmarine3 = minim.loadFile("mine3.mp3");
}

void keyPressed() {

  if (keyCode == LEFT) {
    /* 3. If yellowSubmarineIsStopped, play it, and set yellowSubmarineIsStopped to false. */
     if ( yellowSubmarineIsStopped == true){
       playSong(yellowSubmarine);
       yellowSubmarineIsStopped = false;
     }
     else{
       stopSong(yellowSubmarine);
       yellowSubmarineIsStopped = true;
       
     }
  }
   if (keyCode == RIGHT) {
    /* 3. If yellowSubmarine2IsStopped, play it, and set yellowSubmarineIsStopped to false. */
       if ( yellowSubmarine2IsStopped == true){
         playSong(yellowSubmarine2);
         yellowSubmarine2IsStopped = false;
       }
       else{
         stopSong(yellowSubmarine2);
         yellowSubmarine2IsStopped = true;
       
       }
   }
       if (keyCode == UP) {
    /* 3. If yellowSubmarine3IsStopped, play it, and set yellowSubmarineIsStopped to false. */
     if ( yellowSubmarine3IsStopped == true){
       playSong(yellowSubmarine3);
       yellowSubmarine3IsStopped = false;
     }
     else{
       stopSong(yellowSubmarine3);
       yellowSubmarine3IsStopped = true;
       
     }
  }
     println(yellowSubmarine2IsStopped);
    /* 4. Otherwise, stop it, and set yellowSubmarineIsStopped to true. */
    

  /* 5. Add other songs for the other bananas. keyCode will tell you which banana was pressed. */
  println("you pressed " + keyCode);
  
}

void playSong(AudioPlayer song) {
  song.play();
}

void stopSong(AudioPlayer song)
{
  song.pause();
}

void draw() {}

void setup() {
  loadSongs();
}




