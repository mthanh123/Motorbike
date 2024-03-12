/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author thanh
 */
public class RequestStatus {
    private int requestStatusID;
    private String statusName;

    public RequestStatus() {
    }

    public RequestStatus(int requestStatusID, String statusName) {
        this.requestStatusID = requestStatusID;
        this.statusName = statusName;
    }

    public int getRequestStatusID() {
        return requestStatusID;
    }

    public void setRequestStatusID(int requestStatusID) {
        this.requestStatusID = requestStatusID;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }
    
}
