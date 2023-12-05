/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Quang
 */
public class MainController extends HttpServlet {
    private static final String WELCOME = "homePage.jsp";
    private static final String LOGIN = "Login";
    private static final String LOGIN_CONTROLLER = "LoginController";
    private static final String SEARCH_ACCOUNT = "Search";
    private static final String SEARCH_CONTROLLER = "SearchController";
    private static final String SEARCH_ADMIN = "SearchAdminPro";    
    private static final String SEARCH_ADMIN_PRODUCT_CONTROLLER = "SearchAdminProductController";
    private static final String SEARCH_USER = "SearchUserPro";    
    private static final String SEARCH_USER_PRODUCT_CONTROLLER = "SearchProductController";
    private static final String DELETE = "Delete";
    private static final String DELETE_CONTROLLER = "DeleteController";
    private static final String UPDATE = "Update";
    private static final String UPDATE_CONTROLLER = "UpdateController";
    private static final String UPDATE_PRODUCT = "update";
    private static final String UPDATE_PRODUCT_CONTROLLER = "UpdateProductController";
    private static final String LOGOUT = "Logout";
    private static final String LOGOUT_CONTROLLER = "LogoutController";
    private static final String CREATE_PAGE = "Create_Page";
    private static final String CREATE_PAGE_VIEW = "createUser.html";
    private static final String CREATE = "Create";
    private static final String CREATE_CONTROLLER = "CreateController";
    private static final String Shopping_Page = "Shopping_Page";
    private static final String Shopping_Page_View = "shopping.html";
    private static final String ADD = "Add";
    private static final String ADD_CONTROLLER = "AddController";
    private static final String VIEW = "View";
    private static final String VIEW_PAGE = "viewCart.jsp";
    private static final String EDIT = "Edit";
    private static final String EDIT_CONTROLLER = "EditController";
    private static final String REMOVE = "Remove";
    private static final String REMOVE_CONTROLLER = "RemoveController";    
    
    private static final String CREATE_USER_PRODUCT = "Create new";
    private static final String CREATE_USER_PRODUCT_CONTROLLER = "CreateProductController";
    private static final String CREATE_ADMIN_PRODUCT = "Create New";
    private static final String CREATE_ADMIN_PRODUCT_CONTROLLER = "CreateAdminProductController";
    private static final String UPDATE_ADMIN_PRODUCT = "UpdateAmin";
    private static final String UPDATE_ADMIN_PRODUCT_CONTROLLER = "UpdateAdminProductController";
    private static final String DELETE_ADMIN_PRODUCT = "DeleteAdminPro";
    private static final String DELETE_ADMIN_PRODUCT_CONTROLLER = "DeleteAminProductController";
    private static final String ADD_USER_CART = "UserAddToCart";
    private static final String ADD_USER_CART_CONTROLLER= "AddToCartUserController";
    private static final String VIEW_USER_CART= "UserViewCart";
    private static final String VIEW_USER_CART_CONTROLLER= "viewUserCart.jsp";
    private static final String EDIT_USER_CART= "EditUserCart";
    private static final String EDIT_USER_CART_CONTROLLER= "EditUserCartController";
    private static final String REMOVE_USER_CART = "RemoveUserCart";
    private static final String REMOVE_USER_CART_CONTROLLER= "RemoveUserCartController";
    
    private static final String PRODUCT_DETAIL_1 = "pd1";
    private static final String PRODUCT_DETAIL_CONTROLLER = "proDetail";

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = WELCOME;
        try {
            String action=request.getParameter("action");
            if(action == null || action.isEmpty()){
                url = WELCOME;
            }else if(LOGIN.equals(action)){
                url=LOGIN_CONTROLLER;
            }else if(SEARCH_ACCOUNT.equals(action)){
                url=SEARCH_CONTROLLER;
            }else if(SEARCH_ADMIN.equals(action)){
                url=SEARCH_ADMIN_PRODUCT_CONTROLLER;
            }else if(SEARCH_USER.equals(action)){
                url=SEARCH_USER_PRODUCT_CONTROLLER;
            }else if(DELETE.equals(action)){
                url=DELETE_CONTROLLER;
            }else if(DELETE_ADMIN_PRODUCT.equals(action)){
                url=DELETE_ADMIN_PRODUCT_CONTROLLER;
            }else if(UPDATE.equals(action)){
                url=UPDATE_CONTROLLER;
            }else if(UPDATE_ADMIN_PRODUCT.equals(action)){
                url=UPDATE_ADMIN_PRODUCT_CONTROLLER;
            }else if(UPDATE_PRODUCT.equals(action)){
                url=UPDATE_PRODUCT_CONTROLLER;
            }else if(LOGOUT.equals(action)){
                url=LOGOUT_CONTROLLER;
            }else if(CREATE_PAGE.equals(action)){
                url=CREATE_PAGE_VIEW;
            }else if(CREATE.equals(action)){
                url=CREATE_CONTROLLER;
            }else if(CREATE_ADMIN_PRODUCT.equals(action)){
                url=CREATE_ADMIN_PRODUCT_CONTROLLER;
            }else if(CREATE_USER_PRODUCT.equals(action)){
                url=CREATE_USER_PRODUCT_CONTROLLER;
            }else if(Shopping_Page.equals(action)){
                url = Shopping_Page_View;
            }else if(ADD.equals(action)){
                url = ADD_CONTROLLER;
            }else if(ADD_USER_CART.equals(action)){
                url = ADD_USER_CART_CONTROLLER;
            }else if(VIEW.equals(action)){
                url = VIEW_PAGE;
            }else if(VIEW_USER_CART.equals(action)){
                url = VIEW_USER_CART_CONTROLLER;
            }else if(EDIT.equals(action)){
                url = EDIT_CONTROLLER;
            }else if(EDIT_USER_CART.equals(action)){
                url = EDIT_USER_CART_CONTROLLER;
            }else if(REMOVE.equals(action)){
                url = REMOVE_CONTROLLER;
            }else if(REMOVE_USER_CART.equals(action)){
                url = REMOVE_USER_CART_CONTROLLER;
            }else if(PRODUCT_DETAIL_1.equals(action)){
                url = PRODUCT_DETAIL_CONTROLLER;
            }
              
        }catch(Exception e ){
            log("error at MainController"+e.toString());
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
