import java.sql.Connection;
import java.sql.DriverManager;

public class Database {

  public static void main(String[] args) {
    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection connection = DriverManager.getConnection(
              "jdbc:mysql://academic-mysql.cc.gatech.edu/cs4400_Group_13",
              "cs4400_Group_13",
              "f9KadKyY");

      //connection.prepareStatement(FileReader.readFile("" +      "./gtmrs/res/create_tables.sql")).execute();

      connection.prepareStatement(
              "insert into doctor values (" +
                      "'username0'," +
                      "'000000'," +
                      "'Bill'," +
                      "'Stuart'," +
                      "'General Physician'," +
                      "'11'," +
                      "'1234 doctor way'," +
                      "'12/27/67'" +
                      "'7708888888');"

      ).execute();
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
