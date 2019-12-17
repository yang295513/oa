package cn.qs304.oa.service.impl;

import cn.qs304.oa.beans.NewLabel;
import cn.qs304.oa.dao.NewLabelDao;
import cn.qs304.oa.service.NewLabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("newLabelService")
public class NewLabelServiceImpl implements NewLabelService {

    @Autowired
    private NewLabelDao newLabelDao;

    @Override
    public List<NewLabel> selectAllNewLabel() {
        return newLabelDao.selectAllNewLabel();
    }

    @Override
    public List<NewLabel> selectAllNewLabelTitle() {
        return newLabelDao.selectAllNewLabelTitle();
    }

    @Override
    public List<NewLabel> selectAllNewByPid(Integer pid) {
        return newLabelDao.selectAllNewByPid(pid);
    }

    @Override
    public NewLabel selectNewsById(Integer id) {
        return newLabelDao.selectNewsById(id);
    }

    @Override
    public void insertNewLabel(NewLabel newLabel) {
        newLabelDao.insertNewLabel(newLabel);
    }

    @Override
    public void deleteNewLabelById(Integer id) {
        newLabelDao.deleteNewLabelById(id);
    }

    @Override
    public void updateNewLabelById(NewLabel newLabel) {
        newLabelDao.updateNewLabelById(newLabel);
    }
}
