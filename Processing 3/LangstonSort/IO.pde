void outputSelected(File selection) {
  String path;
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    path = selection.getAbsolutePath()+".png";
    println("User selected " + path);
    saveOutput(path);
  }
}

void saveOutput(String path) {
  saveFrame(path);
}

void inputSelected(File selection) {
  String path;
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    path = selection.getAbsolutePath();
    println("User selected " + path);
    loadInput(path);
  }
}

void loadInput(String path) {
  input = loadImage(path);
  buffer=input.copy();
  surface.setSize(input.width, input.height);
  for (int i = 0; i < ants.length; i++) {
    ants[i].randomize();
  }
  redraw();
}