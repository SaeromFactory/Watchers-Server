package com.watchers.repository;


import com.watchers.common.Mapper;
import com.watchers.model.Board;

import java.util.List;
import java.util.Map;


@Mapper
public interface BoardMapper {
    public List<Board> list(Map<String, Object> param);
    public void add(Map<String, Object> param);
    public void set(Map<String, Object> param);
}
