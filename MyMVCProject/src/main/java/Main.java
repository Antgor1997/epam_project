import java.sql.*;
import java.sql.DriverManager;

public class Main {
    public static void main(String[] args) throws ClassNotFoundException {
         String userName="root";
         String password="Studanton1997";
         String connectionURL="jdbc:mysql://localhost:3306/taxes?serverTimezone=Europe/Moscow&useSSL=false";
         Class.forName("com.mysql.cj.jdbc.Driver");

        try(Connection connection= DriverManager.getConnection(connectionURL, userName, password);
            Statement statement=connection.createStatement()){
            ResultSet resultSet=statement.executeQuery("select * from user ");
            while (resultSet.next()){
                System.out.println(resultSet.getString("userName"));
                System.out.println("-------");
            }
        }catch(Exception ex){
            System.out.println("Connection failed...");
            System.out.println(ex);
        }
    }
}