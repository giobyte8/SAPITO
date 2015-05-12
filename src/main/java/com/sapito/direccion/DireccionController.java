/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.direccion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author LAWL
 */
@Controller
public class DireccionController {

    @RequestMapping(value = "Direccion/indexprincipal", method = RequestMethod.GET)
    public String indexprinvipal(Model model) {
        return "Direccion/indexprincipal";
    }
    
    @RequestMapping(value = "Direccion/Reportes", method = RequestMethod.GET)
    public String Reportes(Model model) {
        return "Direccion/Reportes";
    }

    @RequestMapping(value = "Direccion/HistorialReportes", method = RequestMethod.GET)
    public String HistReportes(Model model) {
        return "Direccion/HistorialReportes";
    }
    
    @RequestMapping(value = "Direccion/CrearReporte", method = RequestMethod.GET)
    public String CrearReportes(Model model) {
        return "Direccion/CrearReporte";
    }


    @RequestMapping(value = "Direccion/Graficas", method = RequestMethod.GET)
    public String Graficas(Model model) {
        return "Direccion/Graficas";
    }

    public static void main(String argv[]) throws Exception {

        
        System.out.println("-------- PostgreSQL "
				+ "JDBC Connection Testing ------------");
 
		try {
 
			Class.forName("org.postgresql.Driver");
 
		} catch (ClassNotFoundException e) {
 
			System.out.println("Where is your PostgreSQL JDBC Driver? "
					+ "Include in your library path!");
			e.printStackTrace();
			return;
 
		}
 
		System.out.println("PostgreSQL JDBC Driver Registered!");
        
        
        try {
            String driver = "org.postgresql.Driver";
            String url = "jdbc:postgresql://localhost:5432/sapito";
            String username = "postgres";
            String password = "123456";
            
            String myDataField = null;
            String myDataField2 = null;
            List data1 = new ArrayList<>();
            
            
            String myQuery = "SELECT * FROM prueba.prueba";
            Connection myConnection = null;
            PreparedStatement myPreparedStatement = null;
            ResultSet myResultSet = null;
            Class.forName(driver).newInstance();
            myConnection = DriverManager.getConnection(url, username, password);
            myPreparedStatement = myConnection.prepareStatement(myQuery);
            myResultSet = myPreparedStatement.executeQuery();
            while (myResultSet.next() ) {
                myDataField = myResultSet.getString("id");
                myDataField2 =myResultSet.getString("value");
                System.out.print(myDataField + "|");
                System.out.println(myDataField2);
                data1.add(Integer.parseInt(myDataField));
                
                
            }
            
           System.out.println(Arrays.toString(data1.toArray()));
           
        } 
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        } 
        catch (SQLException ex) {
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
        }

    }
    
    
}

