package cn.qs304.oa.dao;


import cn.qs304.oa.beans.NewLabel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
public interface NewLabelDao {

    List<NewLabel> selectAllNewLabel();

    List<NewLabel> selectAllNewLabelTitle();

    List<NewLabel> selectAllNewByPid(Integer pid);

    NewLabel selectNewsById(Integer id);

    void insertNewLabel(NewLabel newLabel);

    void deleteNewLabelById(Integer id);

    void updateNewLabelById(NewLabel newLabel);
}
