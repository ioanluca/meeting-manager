package com.meetingmanager;

import java.util.Date;

public class Task extends Meeting {

    private Date endDate;
    private boolean isComplete;
    private boolean hasReminder;
    private boolean hasEndDate;

    public Task(String name, String description,Date startDate,Date endDate, boolean isComplete, boolean hasReminder, boolean hasEndDate) {
       super(name,description,startDate);      
        this.endDate = endDate;
        this.isComplete = isComplete;
        this.hasReminder = hasReminder;
        this.hasEndDate = hasEndDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public boolean isIsComplete() {
        return isComplete;
    }

    public void setIsComplete(boolean isComplete) {
        this.isComplete = isComplete;
    }

    public boolean isHasReminder() {
        return hasReminder;
    }

    public void setHasReminder(boolean hasReminder) {
        this.hasReminder = hasReminder;
    }

    public boolean isHasEndDate() {
        return hasEndDate;
    }

    public void setHasEndDate(boolean hasEndDate) {
        this.hasEndDate = hasEndDate;
    }
    
    

}
