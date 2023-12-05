/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.product;

/**
 *
 * @author Quang
 */
public class ProductError {
    private String prodIdError;
    private String fullNameError;
    private String quantityError;
    private String priceError;
    private String error;

    public ProductError() {
        this.prodIdError = "";
        this.fullNameError = "";
        this.quantityError = "";
        this.priceError = "";
        this.error = "";
    }

    public ProductError(String prodIdError, String fullNameError, String quantityError, String priceError, String error) {
        this.prodIdError = prodIdError;
        this.fullNameError = fullNameError;
        this.quantityError = quantityError;
        this.priceError = priceError;
        this.error = error;
    }

    public String getProdIdError() {
        return prodIdError;
    }

    public void setProdIdError(String prodIdError) {
        this.prodIdError = prodIdError;
    }

    public String getFullNameError() {
        return fullNameError;
    }

    public void setFullNameError(String fullNameError) {
        this.fullNameError = fullNameError;
    }

    public String getQuantityError() {
        return quantityError;
    }

    public void setQuantityError(String quantityError) {
        this.quantityError = quantityError;
    }

    public String getPriceError() {
        return priceError;
    }

    public void setPriceError(String priceError) {
        this.priceError = priceError;
    }
    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
}
