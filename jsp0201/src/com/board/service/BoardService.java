package com.board.service;

import java.util.ArrayList;

import com.board.db.*;

public class BoardService {

    public ArrayList<BoardDto> getMsgList() {
        return new BoardDao().selectList();
    }
    
    public BoardDto getMsg(int num) {
        BoardDto dto = new BoardDao().selectOne(num, true);
        
        dto.setTitle(dto.getTitle().replace (" ",  "&nbsp;"));
        dto.setContent(dto.getContent().replace(" ",  "&nbsp;")
                                       .replace("\n", "<br>"));
        
        return dto;
    }
    
    public BoardDto getMsgForWrite(int num) {
        return new BoardDao().selectOne(num, false);
    }
    
    public void writeMsg(String writer, String title, String content) 
            throws Exception {

        if (writer  == null || writer.length()  == 0 ||
            title   == null || title.length()   == 0 ||
            content == null || content.length() == 0) {
            
            throw new Exception("모든 항목이 빈칸 없이 입력되어야 합니다.");
        } 
        
        BoardDto dto = new BoardDto();
        dto.setWriter (writer );
        dto.setTitle  (title  );
        dto.setContent(content);
           
        new BoardDao().insertOne(dto);
    }
    
    public void updateMsg(
            String writer, String title, String content, int num) 
                    throws Exception {

        if (writer  == null || writer.length()  == 0 ||
            title   == null || title.length()   == 0 ||
            content == null || content.length() == 0) {
            
            throw new Exception("모든 항목이 빈칸 없이 입력되어야 합니다.");
        } 
        
        BoardDto dto = new BoardDto();
        dto.setNum    (num    );
        dto.setWriter (writer );
        dto.setTitle  (title  );
        dto.setContent(content);
        
        new BoardDao().updateOne(dto);  
    }
    
    public void deleteMsg(int num) {
        new BoardDao().deleteOne(num); 
    }
}