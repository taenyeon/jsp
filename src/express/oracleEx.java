package express;

import javax.servlet.http.HttpServlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class oracleEx extends HttpServlet {

    public static boolean Join() throws ClassNotFoundException, SQLException, SQLException {
        String url = "jdbc:oracle:thin:@192.168.1.156:1521:xe";
        String dbid = "hr";
        String dbpw = "1234";

        Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection conn = DriverManager.getConnection(url, dbid, dbpw);
        return true;
    }
}
