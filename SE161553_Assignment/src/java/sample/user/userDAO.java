/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import sample.utils.DBUtils;

/**
 *
 * @author GBC
 */
public class userDAO {
    private static final String LOGIN="SELECT userName,roleID FROM users WHERE userID=? AND password=?";
    private static final String SEARCH="SELECT userID,userName,roleID FROM users WHERE userName like ?";
    private static final String DELETE="DELETE users WHERE userID=?";
    private static final String UPDATE="UPDATE users SET userName=?, roleID=? WHERE userID=?";
    private static final String DUPLICATE="SELECT userName FROM users WHERE userID=?";
    private static final String INSERT= "INSERT INTO users(userID,userName,roleID,password) VALUES(?,?,?,?)";

    public userDTO checkLogin(String userID,String password) throws SQLException{
        userDTO user=null;
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(LOGIN);
                pst.setString(1, userID);
                pst.setString(2, password);
                rs=pst.executeQuery();
                if(rs.next()){
                    String fullName=rs.getString("userName");
                    String roleID=rs.getString("roleID");
                    user=new userDTO(userID, fullName, roleID," ");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(rs!=null) rs.close();
            if(pst!=null) pst.close();
            if(conn!=null) conn.close();
        }
        return user;
    }

    public List<userDTO> getListUser(String search) throws SQLException, ClassNotFoundException, NamingException {
       List<userDTO> list=new ArrayList<>();
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
                    String userID=rs.getString("userID");
                    String fullName=rs.getString("userName");
                    String roleID=rs.getString("roleID");
                    String password="***";
                    list.add(new userDTO(userID, fullName, roleID, password));
                }
            }
        }finally{
            if(rs!=null)rs.close();
            if(pst!=null)pst.close();
            if(conn!=null)conn.close();
        }
        return list;
    }

    public boolean delete(String userID) throws SQLException {
        boolean check=false;
        Connection conn=null;
        PreparedStatement pst=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(DELETE);
                pst.setString(1, userID);
                check=pst.executeUpdate()>0?true:false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(pst!=null)pst.close();
            if(conn!=null)pst.close();
            
            
        }
        return check;
    }

    public boolean update(userDTO user) throws SQLException {
        boolean check=false;
        Connection conn=null;
        PreparedStatement pst=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(UPDATE);
                pst.setString(1, user.getFullName());
                pst.setString(2, user.getRoleID());
                pst.setString(3, user.getUserID());
                check=pst.executeUpdate()>0?true:false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(pst!=null)pst.close();
            if(conn!=null)pst.close();
            
            
        }
        return check;
    }

    public boolean checkDuplicate(String userID) throws SQLException {
        boolean check=false;
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(DUPLICATE);
                pst.setString(1, userID);
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

    public boolean insert(userDTO user) throws SQLException {
     boolean check=false;
        Connection conn=null;
        PreparedStatement pst=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(INSERT);
                pst.setString(1, user.getUserID());
                pst.setString(2, user.getFullName());
                pst.setString(3, user.getRoleID());
                pst.setString(4, user.getPassword());
                check=pst.executeUpdate()>0?true:false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(pst!=null)pst.close();
            if(conn!=null)pst.close();
            
            
        }
        return check;
    }

    public boolean insertv2(userDTO user) throws SQLException, ClassNotFoundException, NamingException {
        boolean check=false;
        Connection conn=null;
        PreparedStatement pst=null;
        try {
            conn=DBUtils.getConnection();
            if(conn!=null){
                pst=conn.prepareStatement(INSERT);
                pst.setString(1, user.getUserID());
                pst.setString(2, user.getFullName());
                pst.setString(3, user.getRoleID());
                pst.setString(4, user.getPassword());
                check=pst.executeUpdate()>0?true:false;
            }
        } finally{
            if(pst!=null)pst.close();
            if(conn!=null)pst.close();
            
            
        }
        return check;
    }
}
