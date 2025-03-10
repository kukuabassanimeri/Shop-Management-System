/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package shopmanagementsystem;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author HP1
 */
public class ShopManagementSystem {
    
    //CONNECT TO THE DATABASE
    private static final String URL = "jdbc:mysql://localhost:3306/shop_management";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    
    public static Connection getConnection(){
        Connection conn = null;
        try{
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connected to the database Successfully!");
        }catch(SQLException e){
            System.out.println("Database connection Failed!: " + e.getMessage());
        }
        return conn;
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        getConnection();
    }
    
}
