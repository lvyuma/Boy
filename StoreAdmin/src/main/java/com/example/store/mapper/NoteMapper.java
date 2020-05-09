package com.example.store.mapper;

import com.example.store.bean.Note;
import org.apache.ibatis.annotations.Param;

public interface NoteMapper {
    /**
     * 根据管理员的输入的笔记
     */

    void insertNote(@Param("note") String note,@Param("time") String time );

    String selectLastNote();
}
