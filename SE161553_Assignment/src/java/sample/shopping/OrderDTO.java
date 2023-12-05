/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.shopping;

import java.util.Date;
import java.lang.String;
import sample.product.ProductDTO;

/**
 *
 * @author Quang
 */
public class OrderDTO {
    private String orderID;
    private String userID;
    private String date;
    private float total;

    public OrderDTO() {
    }

    public OrderDTO(String orderID, String userID, String date, float total) {
        this.orderID = orderID;
        this.userID = userID;
        this.date = date;
        this.total = total;
    }

    public OrderDTO(String toString, String userID) {
        this.orderID = orderID;
        this.userID = userID;
    }
    
    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "OrderDTO{" + "orderID=" + orderID + ", userID=" + userID + ", date=" + date + ", total=" + total + '}';
    }

}