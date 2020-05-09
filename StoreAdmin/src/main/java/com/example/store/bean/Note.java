package com.example.store.bean;

public class Note {
    private int id;
    private String date;
    private String note;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "{" +
                "id=" + id +
                ", date='" + date + '\'' +
                ", note='" + note + '\'' +
                '}';
    }
}
