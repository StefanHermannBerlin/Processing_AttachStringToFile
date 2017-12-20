import java.io.FileWriter;

void writeToFile(String myContent, String myFile) {
  // this methode attaches a String (myContent) to a file (myFile)
  // forum.processing.org/two/discussion/561/easiest-way-to-append-to-a-file-in-processing

  try {
    FileWriter output = new FileWriter(sketchPath + "/"+ myFile, true);  // sketchPath is the current folder
    output.write(myContent+"\n");
    output.flush();
    output.close();
  }

  catch(IOException e) {
    println("It broke!!!");
    e.printStackTrace();
  }
}

TextField textField = new TextField("Text", 16);

void setup(){
  writeToFile("Player: Name, Email, Time, Pulse", "highscore.txt");
 
}



void draw () {
}
