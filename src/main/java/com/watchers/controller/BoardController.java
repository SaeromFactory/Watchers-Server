package com.watchers.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.watchers.model.Board;
import com.watchers.model.CommonResponse;
import com.watchers.service.BoardService;

import java.util.List;

@RequestMapping("boards")
@RestController
public class BoardController {

    @Autowired private BoardService boardService;
    private final int pageSize = 10;

    @RequestMapping( value = "/list/{page}", method = RequestMethod.GET)
    public List<Board> list(@PathVariable("page") Integer page) {
        page = (page == null) ? 1 : page;
        int offset = (page - 1) * pageSize;
        return boardService.list(page, offset);
    }

    @RequestMapping( value = "/", method = RequestMethod.POST)
    public CommonResponse add(@RequestBody Board board) {
        if (board == null)
            return new CommonResponse(CommonResponse.fail, "board 값이 없습니다.");
        if (board.getTitle() == null)
            return new CommonResponse(CommonResponse.fail, "board 타이틀 값이 없습니다.");
        if (board.getContents() == null)
            return new CommonResponse(CommonResponse.fail, "board 내용이 없습니다.");
        return new CommonResponse(boardService.add(board));
    }

    @RequestMapping( value = "/{id}", method = RequestMethod.PUT)
    public CommonResponse update(@PathVariable("id") Long id, @RequestBody Board board) {
        if(id == null)
            return new CommonResponse(CommonResponse.fail, "id가 없습니다.");
        if (board == null)
            return new CommonResponse(CommonResponse.fail, "board 값이 없습니다.");
        if (board.getTitle() == null)
            return new CommonResponse(CommonResponse.fail, "board 타이틀 값이 없습니다.");
        if (board.getContents() == null)
            return new CommonResponse(CommonResponse.fail, "board 내용이 없습니다.");

        board.setId(id);
        return new CommonResponse(boardService.set(board));
    }

}
