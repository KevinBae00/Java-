package com.javacho.p5;

public class Time {
    private int hour; // 0 ~ 23
    private int minute; // 0 ~ 59
    private int second; // 0 ~ 59

    public int getHour() {
        return hour;
    }

    public Time() {
    }

    public Time(int hour, int minute, int second) {
        this.hour = hour;
        this.minute = minute;
        this.second = second;
    }

    public void setHour(int hour) {
        this.hour = hour;
    }

    public int getMinute() {
        return minute;
    }

    public void setMinute(int minute) {
        this.minute = minute;
    }

    public int getSecond() {
        return second;
    }

    public void setSecond(int second) {
        this.second = second;
    }
}
