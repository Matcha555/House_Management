/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.product.ProductDAO;
import sample.product.ProductDTO;
import sample.product.ProductError;

/**
 *
 * @author Quang
 */
@WebServlet(name = "CreateProductController", urlPatterns = {"/CreateProductController"})
public class CreateProductController extends HttpServlet {
    private static final String ERROR = "managerUser.jsp";
    private static final String SUCCESS = "CreateProductController";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        ProductError proError=new ProductError();
        ProductDAO dao=new ProductDAO();
        boolean checkValidation=true;
        try {
            String proID = request.getParameter("proId");
            String fullName = request.getParameter("proName");
            int quantity = Integer.parseInt(request.getParameter("proQuantity"));
            double price = Double.parseDouble(request.getParameter("proPrice"));
            
            if(proID.length()>10 || proID.length()<2){
                checkValidation=false;
                proError.setProdIdError("proID must be in[2,10]");
            }
            
            boolean checkDuplicate = dao.checkDuplicate(proID);
            if(checkDuplicate){
                checkValidation=false;
                proError.setProdIdError("Duplicate prodId!!");
            }

            if(fullName.length()<2){
                checkValidation=false;
                proError.setFullNameError("proName must be greater than 2");
            }
            if(quantity<0){
                checkValidation=false;
                proError.setPriceError("proQuantity must be greater than 0");
            }
            if(price<0){
                checkValidation=false;
                proError.setQuantityError("proQuantity must be greater than 0");
            }
            if(checkValidation){
                ProductDTO prod = new ProductDTO(proID, fullName, quantity, price);
                boolean checkInsert = dao.insertv2(prod);
                if(checkInsert){
                    url = SUCCESS;
                }else{
                    proError.setError("Unknow error!");
                }
            }else{
                request.setAttribute("PROD_ERROR", proError);
            }
        }catch(Exception e){
            log("error at createcontroller"+e.toString());
            if(e.toString().contains("duplicate")){
                proError.setProdIdError("Trung khoa roi kia");
                request.setAttribute("PROD_ERROR", proError);
            }
        }finally{
            request.getRequestDispatcher(url).forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
