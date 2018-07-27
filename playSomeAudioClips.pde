

void playSomeAudioClips() {
  
  if(playBox && alreadyOpenedBox == false) {
    audioBoxFace = minim.loadFile("robot_fred_creator.wav");
    audioBoxFace.play();
    alreadyOpenedBox = true;
    alreadyClosedBox = false;
  } else if(!playBox && alreadyOpenedBox) {
     if(alreadyClosedBox == false) {
     //audioBoxFace.close();
     alreadyOpenedBox = false;
     alreadyClosedBox = true;
    }
  }  
  
  if(playSphere && alreadyOpenedSphere == false) {
    audioSphereHead = minim.loadFile("robot_junior_who.wav");
    audioSphereHead.play();
    alreadyOpenedSphere = true;
    alreadyClosedSphere = false;
  } else if(!playSphere && alreadyOpenedSphere) {
     if(alreadyClosedSphere == false) {
     //audioSphereHead.close();
     alreadyOpenedSphere = false;
     alreadyClosedSphere = true;
    }
  }  
  
  if(playButt && alreadyOpenedButt == false) {
    audioTriangleButt = minim.loadFile("robot_kathy_going_on.wav");
    audioTriangleButt.play();
    alreadyOpenedButt = true;
    alreadyClosedButt = false;
  } else if(!playBox && alreadyOpenedButt) {
     if(alreadyClosedButt == false) {
     //audioTriangleButt.close();
     alreadyOpenedButt = false;
     alreadyClosedButt = true;
    }
  }  
  
  if(playCreep && alreadyOpenedCreep == false) {
    audioTheCreep = minim.loadFile("robot_trinoids_to_do.wav");
    audioTheCreep.play();
    alreadyOpenedCreep = true;
    alreadyClosedCreep = false;
  } else if(!playCreep && alreadyOpenedCreep) {
     if(alreadyClosedCreep == false) {
     //audioTheCreep.close();
     alreadyOpenedCreep = false;
     alreadyClosedCreep = true;
    }
  }  
  
}
