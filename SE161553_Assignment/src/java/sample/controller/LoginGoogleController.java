/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import sample.user.Constants;
import sample.user.GoogleDTO;

/**
 *
 * @author Quang
 */
public class LoginGoogleController extends HttpServlet {

    private static final String ERROR = "homePage.jsp";
    private static final String USER_PAGE = "googleAccount.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        String code = request.getParameter("code");
        String accessToken = getToken(code);
        GoogleDTO user = getUserInfo(accessToken); //lấy accessToken của getUserInfo
        try{
            if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("USER_TOKEN", user);
            url = USER_PAGE;
            
        }
        }catch(Exception e){
            
        }finally{
            request.getRequestDispatcher(url).forward(request, response);
        }

//	System.out.println(user);
    }

    public static String getToken(String code) throws IOException {
        String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();

        //Sau khi gửi request lên Google thì Google trả về response. 
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");  //replaceAll("\"", ""): bỏ hết dư thừa, chỉ lấy mỗi accessToken thôi
        return accessToken; //Sau khi lấy accessToken xong, thì trả về function getToken
    }

    //hàm này google đưa dữ liệu người dùng về client
    public static GoogleDTO getUserInfo(String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();  //gửi request lên Google 
        GoogleDTO googlePojo = new Gson().fromJson(response, GoogleDTO.class);

        return googlePojo;
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

    //đây là hàm lấy code ở trong đường dẫn google
    //dùng Refresh Token truyền vào "String code", sau đó truyền vào dưới. Rồi sau đấy lấy Authentication Token truyền vào Google 
}
