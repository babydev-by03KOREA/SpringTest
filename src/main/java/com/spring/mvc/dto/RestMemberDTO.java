package com.spring.mvc.dto;

public class RestMemberDTO {

    private int userNo;
    private String userName;
    private String userId;
    private String userPassword;
    public RestMemberDTO(){}

    public RestMemberDTO(int userNo, String userName, String userId, String userPassword) {
        super();
        this.userNo = userNo;
        this.userName = userName;
        this.userId = userId;
        this.userPassword = userPassword;
    }

    public int getUserNo() {
        return userNo;
    }

    public void setUserNo(int userNo) {
        this.userNo = userNo;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    @Override
    public String toString() {
        return "RestMemberDTO{" +
                "userNo=" + userNo +
                ", userName='" + userName + '\'' +
                ", userId='" + userId + '\'' +
                ", userPassword='" + userPassword + '\'' +
                '}';
    }
}
