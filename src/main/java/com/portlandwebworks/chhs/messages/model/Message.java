package com.portlandwebworks.chhs.messages.model;

import java.util.Date;

public class Message {
    private String id;
    private String caseWorkerId;
    private String caseWorkerName;
    private String sender;
    private Date date;
    private String message;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCaseWorkerId() {
        return caseWorkerId;
    }

    public void setCaseWorkerId(String caseWorkerId) {
        this.caseWorkerId = caseWorkerId;
    }

    public String getCaseWorkerName() {
        return caseWorkerName;
    }

    public void setCaseWorkerName(String caseWorkerName) {
        this.caseWorkerName = caseWorkerName;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
