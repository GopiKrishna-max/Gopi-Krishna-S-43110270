package nov_27;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DB_connect {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/saturday?createDatabaseIfNotExist=true",
                "root",
                "root"
            );

            Statement stmt = con.createStatement();

            String createTable =
                "CREATE TABLE IF NOT EXISTS Worker (" +
                "id INT PRIMARY KEY, " +
                "name VARCHAR(50), " +
                "dept VARCHAR(50), " +
                "position VARCHAR(50), " +
                "salary DOUBLE)";
            stmt.executeUpdate(createTable);

            // Clear old data every run
            stmt.executeUpdate("DELETE FROM Worker");

            // Insert 5 new workers
            stmt.executeUpdate(
                "INSERT INTO Worker VALUES " +
                "(1,'Gopi','IT','Developer',35000), " +
                "(2,'Adib Ahmed','HR','Manager',42000), " +
                "(3,'Karthik','Finance','Accountant',39000), " +
                "(4,'Deepa','Admin','Assistant',28000), " +
                "(5,'Bhuvana','Sales','Executive',45000)"
            );

            ResultSet rs = stmt.executeQuery("SELECT * FROM Worker");

            while (rs.next()) {
                System.out.println(
                    rs.getInt("id") + "  " +
                    rs.getString("name") + "  " +
                    rs.getString("dept") + "  " +
                    rs.getString("position") + "  " +
                    rs.getDouble("salary")
                );
            }

            con.close();

        } catch (Exception e) {
            System.out.println("Dear customer, please check your program");
            e.printStackTrace();
        }
    }
}
