package com.example.store.service;

import com.example.store.bean.Note;
import com.example.store.mapper.NoteMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class NoteServiceImpl implements  NoteService {
    @Resource
    private NoteMapper noteMapper;


    @Override
    public String insertNote(String note,String time) {
        noteMapper.insertNote(note,time);
        return "OK";
    }

    @Override
    public String selectLastNote() {
        System.out.println("调用基础层服务.......");
        String readNote = noteMapper.selectLastNote();
        System.out.println("readNote="+readNote);
//        String s=readNote+"";
        return readNote;
    }
}
