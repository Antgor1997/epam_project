package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class MyModel {
    final String userName="root";
    final String password="Studanton1997";
    final String connectionURL="jdbc:mysql://localhost:3306/taxes";

    public Administrator getAdministrator(){
        Administrator administrator=new Administrator();
        administrator.setLogin("Irbysgor");
        administrator.setPassword("Studanton1997");
        return administrator;
    }

    public Student getStudent(){
       Student student=new Student();
       student.setName("Anton");
       student.setAge(21);
       return student;
    }

    public User getUser() throws SQLException, ClassNotFoundException {
        User user=new User();
        Class.forName("jdbc:mysql://localhost:3306/taxes?serverTimezone=Europe/Moscow&useSSL=false");
        try {
            Connection connection= DriverManager.getConnection(connectionURL, userName, password);
            Statement statement=connection.createStatement();
        }catch(Exception ex){
            System.out.println("Connection failed...");
            System.out.println(ex);
        }
        return user;
    }

    public Report getReport(){
        Report report = new Report();
        return report;
    }

    public Inspector getInspector(){
        Inspector inspector = new Inspector();
        return inspector;
    }
}
