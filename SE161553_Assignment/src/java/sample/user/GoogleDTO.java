/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.user;

/**
 *
 * @author Quang
 */
public class GoogleDTO {
    private String id;
    private String email;
    private boolean verifyEmail;
    private String googleName;
    private String givenName;
    private String familyName;
    private String picture;

    public GoogleDTO() {
    }

    public GoogleDTO(String id, String email, boolean verifyEmail, String googleName, String givenName, String familyName, String picture) {
        this.id = id;
        this.email = email;
        this.verifyEmail = verifyEmail;
        this.googleName = googleName;
        this.givenName = givenName;
        this.familyName = familyName;
        this.picture = picture;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isVerifyEmail() {
        return verifyEmail;
    }

    public void setVerifyEmail(boolean verifyEmail) {
        this.verifyEmail = verifyEmail;
    }

    public String getGoogleName() {
        return googleName;
    }

    public void setGoogleName(String googleName) {
        this.googleName = googleName;
    }

    public String getGivenName() {
        return givenName;
    }

    public void setGivenName(String givenName) {
        this.givenName = givenName;
    }

    public String getFamilyName() {
        return familyName;
    }

    public void setFamilyName(String familyName) {
        this.familyName = familyName;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "GoogleDTO{" + "id=" + id + ", email=" + email + ", verifyEmail=" + verifyEmail + ", googleName=" + googleName + ", givenName=" + givenName + ", familyName=" + familyName + ", picture=" + picture + '}';
    }
}
