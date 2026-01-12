/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author khoirul umam
 */
public class Koneksi {
    public static Connection koneksiDB(){
        try {
            String url="jdbc:mysql://localhost:3306/dbkedai_kopi";
            String user="root";
            String pass="";
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            Connection conn=DriverManager.getConnection(url, user, pass);
            return conn;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return null;
    }
}
