/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author thanh
 */
public class Request {
    private int ID;
    private String Name;
    private String phonenumber;
    private String Address;
    private Date receivedDate;
    private Date returnDate;
    private int totalAmount;
    private RequestStatus status;

    public Request() {
    }

    public Request(int ID, String Name, String phonenumber, String Address, Date receivedDate, Date returnDate, int totalAmount, RequestStatus status) {
        this.ID = ID;
        this.Name = Name;
        this.phonenumber = phonenumber;
        this.Address = Address;
        this.receivedDate = receivedDate;
        this.returnDate = returnDate;
        this.totalAmount = totalAmount;
        this.status = status;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public Date getReceivedDate() {
        return receivedDate;
    }

    public void setReceivedDate(Date receivedDate) {
        this.receivedDate = receivedDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    public int getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(int totalAmount) {
        this.totalAmount = totalAmount;
    }

    public RequestStatus getStatus() {
        return status;
    }

    public void setStatus(RequestStatus status) {
        this.status = status;
    }
    
}
