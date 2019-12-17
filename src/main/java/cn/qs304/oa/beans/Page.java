package cn.qs304.oa.beans;

import java.util.List;

/**
 * @author wys
 * @date 2019/12/16
 */
public class Page {

    //当前页数
    private Integer start;
    //总页数
    private Integer total;
    //总记录数
    private Integer count;
    //当前页数的内容
    private List<NewLabel> pageList;
    //父栏目
    private String parent;

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public List<NewLabel> getPageList() {
        return pageList;
    }

    public void setPageList(List<NewLabel> pageList) {
        this.pageList = pageList;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getParent() {
        return parent;
    }

    public void setParent(String parent) {
        this.parent = parent;
    }
}
