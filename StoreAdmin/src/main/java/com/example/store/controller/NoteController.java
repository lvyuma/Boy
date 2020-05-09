package com.example.store.controller;

import com.example.store.bean.Note;
import com.example.store.common.JsonResult;
import com.example.store.service.NoteService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/admin")
public class NoteController {

    @Resource
    NoteService noteService;

    @RequestMapping("/insertNote.do")
    @ResponseBody
    public String inserNote(@RequestParam("note") String note){
        Date date= new Date();
        DateFormat df = new SimpleDateFormat("yyy-MMM-dd HH:mm:sss");
        String stringDate=df.format(date);
        System.err.println("开始保存便签......"+note+"+++++++");
        noteService.insertNote(note,stringDate);

        System.err.println("保存便签完成......");
        return "json";
    }

    @RequestMapping("/readLastNote.do")
    @ResponseBody
    public JsonResult  readLastNote(){
        System.err.println("开始调用业务层方法.......");
         String note=noteService.selectLastNote();
//        Note note = new Note();
//        note.setNote(noteService.selectLastNote());
        System.err.println("开始返回数据......." + note);
        return  new JsonResult(200,"OK",note);
    }

}
