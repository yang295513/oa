package cn.qs304.oa.service;

import cn.qs304.oa.beans.NewLabel;

import java.util.List;

public interface NewLabelService {

    List<NewLabel> selectAllNewLabel();

    List<NewLabel> selectAllNewLabelTitle();

    List<NewLabel> selectAllNewByPid(Integer pid);

    NewLabel selectNewsById(Integer id);

    void insertNewLabel(NewLabel newLabel);

    void deleteNewLabelById(Integer id);

    void updateNewLabelById(NewLabel newLabel);

}
