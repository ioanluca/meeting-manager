/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.meetingmanager;

import java.util.Date;

/**
 *
 * @author ronyportelli
 */
public class Reminder {
    private Task task;
    private Date time;
    private String period;

    public Reminder(Task task, Date time, String period) {
        this.task = task;
        this.time = time;
        this.period = period;
    }

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getPeriod() {
        return period;
    }

    public void setPeriod(String period) {
        this.period = period;
    }
    
}
