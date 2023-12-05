/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author Quang
 */
public class ProductDAO {
    private static final String GET_ALL = "SELECT productID, productName, productQuantity, productPrice FROM product";
    private static final String GET_PRO_ID = "SELECT * FROM product WHERE productID=?";
    private static final String SEARCH="SELECT productID, productName, productQuantity, productPrice FROM product WHERE productName like ?";
    private static final String DELETE="DELETE product WHERE productID=?";
    private static final String UPDATE="UPDATE product SET productName=?, productQuantity=?, productPrice=? WHERE productID=?";
    private static final String DUPLICATE="SELECT productName FROM product WHERE productID=?";
    private static final String INSERT= "INSERT INTO product(productID,productName,productQuantity,productPrice) VALUES(?,?,?,?)";
    
    public ArrayList<ProductDTO> getAllListPro() throws ClassNotFoundException, SQLException{
       ArrayList<ProductDTO> list = new ArrayList<>();
       Connection conn=null;
       PreparedStatement pst=null;
       ResultSet rs=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(GET_ALL);
                rs=pst.executeQuery();
                while(rs.next()){
                    String id=rs.getString("productID");
                    String fullName=rs.getString("productName");
                    int quantity=rs.getInt("productQuantity");
                    double price=rs.getDouble("productPrice");
                    list.add(new ProductDTO(id, fullName, quantity, price));
                }
            }
        }finally{
            if(rs!=null)rs.close();
            if(pst!=null)pst.close();
            if(conn!=null)conn.close();
        }
        return list;
    }
    
    public List<ProductDTO> getProId(String id) throws ClassNotFoundException, SQLException{
       List<ProductDTO> list = new ArrayList<>();
       Connection conn=null;
       PreparedStatement pst=null;
       ResultSet rs=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(GET_PRO_ID);
                pst.setString(1, id);
                rs=pst.executeQuery();
                while(rs.next()){
                    String fullName=rs.getString("productName");
                    int quantity=rs.getInt("productQuantity");
                    double price=rs.getDouble("productPrice");
                    list.add(new ProductDTO(id, fullName, quantity, price));
                }
            }
        }finally{
            if(rs!=null)rs.close();
            if(pst!=null)pst.close();
            if(conn!=null)conn.close();
        }
        return list;
    }

    public List<ProductDTO> getListProduct(String search) throws ClassNotFoundException, SQLException {
       List<ProductDTO> list=new ArrayList<>();
       Connection conn=null;
       PreparedStatement pst=null;
       ResultSet rs=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(SEARCH);
                pst.setString(1,"%"+search+"%");
                rs=pst.executeQuery();
                while(rs.next()){
                    String id=rs.getString("productID");
                    String fullName=rs.getString("productName");
                    int quantity=rs.getInt("productQuantity");
                    double price=rs.getDouble("productPrice");
                    list.add(new ProductDTO(id, fullName, quantity, price));
                }
            }
        }finally{
            if(rs!=null)rs.close();
            if(pst!=null)pst.close();
            if(conn!=null)conn.close();
        }
        return list;
    }

    public boolean update(ProductDTO prod) throws SQLException {
        boolean check=false;
        Connection conn=null;
        PreparedStatement pst=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(UPDATE);
                pst.setString(1, prod.getProductName());
                pst.setInt(2, prod.getProductQuantity());
                pst.setDouble(3, prod.getProductPrice());   
                pst.setString(4, prod.getProductID());   
                check = pst.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(pst!=null)pst.close();
            if(conn!=null)pst.close();
            
            
        }
        return check;
    }

    public boolean delete(String proID) throws SQLException {
        boolean check=false;
        Connection conn=null;
        PreparedStatement pst=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(DELETE);
                pst.setString(1, proID);
                check = pst.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(pst!=null)pst.close();
            if(conn!=null)pst.close();
            
            
        }
        return check;
    }

    public boolean insertv2(ProductDTO prod) throws ClassNotFoundException, SQLException {
        boolean check=false;
        Connection conn=null;
        PreparedStatement pst=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(INSERT);
                pst.setString(1, prod.getProductID());
                pst.setString(2, prod.getProductName());
                pst.setInt(3, prod.getProductQuantity());
                pst.setDouble(4, prod.getProductPrice());   
                check=pst.executeUpdate()>0?true:false;
            }
        } finally{
            if(pst!=null)pst.close();
            if(conn!=null)pst.close(); 
        }
        return check;
    }

    public boolean checkDuplicate(String proID) throws SQLException {
        boolean check=false;
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(DUPLICATE);
                pst.setString(1, proID);
                rs=pst.executeQuery();
                if(rs.next()){
                    check=true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(rs!=null) rs.close();
            if(pst!=null) pst.close();
            if(conn!=null) conn.close();
        }
        return check; 
    }
    
    public static void main(String[] args) throws ClassNotFoundException, SQLException{
        ProductDAO dao = new ProductDAO();
//        ArrayList<ProductDTO> dto = dao.getAllListPro();
//        for(ProductDTO t : dto){
//            System.out.println(t);
//        }
        
        List<ProductDTO> dto1 = dao.getProId("p12");
        System.out.println(dto1);
    }
}
