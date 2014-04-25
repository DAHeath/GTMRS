import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileReader {
  private static BufferedReader br;

  public static String readFile(String filename) {
    br = getBufferedReader(filename);
    String file = "";
    String line = getNextLine();
    while (line != null) {
      file += line;
      line = getNextLine();
    }
    return file;
  }

  private static BufferedReader getBufferedReader(String filename) {
    BufferedReader br = null;
    try {
      br = new BufferedReader(new java.io.FileReader(filename));
    } catch (FileNotFoundException e) {
      e.printStackTrace();
    }
    return br;
  }

  private static String getNextLine() {
    String line = "";
    try {
      line = br.readLine();
    } catch (IOException e) {
      e.printStackTrace();
    }
    return line;
  }
}