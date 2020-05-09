package com.example.store.service;

public interface NoteService {

    String insertNote(String note,String time);
    String selectLastNote();
}
