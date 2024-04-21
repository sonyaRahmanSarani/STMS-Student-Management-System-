
import STMS.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnectMSSQL {

    static int chk = 1;
    public static Connection
            connectDB() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection connection = DriverManager
                    .getConnection("jdbc:sqlserver://localhost:1433;databaseName=STMS;selectMethod=cursor;" + "encrypt=true;trustServerCertificate=true;",
                             "sa", "123456");

            System.out.println("\nDATABASE : " + connection.getMetaData().getDatabaseProductName() + " \nConnected: " + chk++);
            return connection;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
