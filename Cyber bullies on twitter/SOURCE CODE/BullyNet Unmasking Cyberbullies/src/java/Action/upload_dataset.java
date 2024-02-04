/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import DBconnection.SQLconnection;
import com.oreilly.servlet.MultipartRequest;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class upload_dataset extends HttpServlet {

    String filepath = "D:\\";
    private String title;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");

        MultipartRequest m = new MultipartRequest(request, filepath);
        File file = m.getFile("csv");
        String filename = file.getName();
        char sp = '"';
        System.out.println("-----------------File name : " + file);
        System.out.println("-----------------File name : " + filepath);

        BufferedReader br = new BufferedReader(new FileReader(filepath + filename));
        StringBuilder sb = new StringBuilder();
        String temp = null;
        while ((temp = br.readLine()) != null) {
            sb.append(temp);
        }
        HttpSession user = request.getSession(true);
        Connection con = SQLconnection.getconnection();
        Statement st = con.createStatement();
        Statement st1 = con.createStatement();

        try {
            String loadQuery = "LOAD DATA INFILE '" + "D:\\" + filename + "'\n"
                    + "INTO TABLE swords\n"
                    + "FIELDS TERMINATED BY ','\n"
                    + "ENCLOSED BY '\"'\n"
                    + "LINES TERMINATED BY '\\r\\n'  IGNORE 1 LINES (word)";

            System.out.println(loadQuery);
            Statement stmt = con.createStatement();
            stmt.execute(loadQuery);
            response.sendRedirect("add_dataset.jsp?Dataset_uploaded");

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(upload_dataset.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(upload_dataset.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
