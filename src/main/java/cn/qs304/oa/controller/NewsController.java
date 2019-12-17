package cn.qs304.oa.controller;

import cn.qs304.oa.beans.NewLabel;
import cn.qs304.oa.beans.Page;
import cn.qs304.oa.service.NewLabelService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.http.converter.json.JsonbHttpMessageConverter;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;


@RestController
public class NewsController {

    @Resource
    private NewLabelService newLabelService;

    @GetMapping(value = "/getNewsTitles")
    public JSONObject getNewsTitles() {
        JSONObject jsonObject=new JSONObject();
        try{
            List<NewLabel> list = newLabelService.selectAllNewLabelTitle();
            jsonObject.put("code",200);
            jsonObject.put("msg","获取成功");
            jsonObject.put("data",list);
        }catch (Exception e) {
            jsonObject.put("code",500);
            jsonObject.put("msg",e.getMessage());
        }
        return jsonObject;
    }

    @PostMapping(value = "/getNews")
    public JSONObject getNews(String pid,String page) {
        JSONObject jsonObject=new JSONObject();
        Integer len = Integer.valueOf(page)-1;
        try{
            List<NewLabel> list = newLabelService.selectAllNewByPid(Integer.valueOf(pid));
            int total = list.size()/5;
            //总页码
            if(list.size()%5!=0) {
                total++;
            }
            if(len<0||len>total-1){
                jsonObject.put("msg","page有误");
                jsonObject.put("code",400);
            }
            Page p = new Page();
            p.setCount(list.size());
            p.setTotal(total);
            p.setStart(len+1);
            p.setParent(newLabelService.selectNewsById(Integer.valueOf(pid)).getLabel_name());
            if(len == total-1) {
                p.setPageList(list.subList(len*5,list.size()));
            } else {
                p.setPageList(list.subList(len*5,(len+1)*5));
            }
            jsonObject.put("msg","获取成功");
            jsonObject.put("code",200);
            jsonObject.put("data",p);
        }catch (Exception e) {
            jsonObject.put("msg","获取失败");
            jsonObject.put("code",500);
        }
        return jsonObject;
    }

    @PostMapping(value = "/insertNewLabel")
    public JSONObject insertNewLabel(String label_title,String label_content,String pid) {
        JSONObject jsonObject=new JSONObject();
        try{
            NewLabel newLabel = new NewLabel();
            newLabel.setPid(Integer.valueOf(pid));
            newLabel.setLabel_name(label_title);
            newLabel.setLabel_content(label_content);
            newLabelService.insertNewLabel(newLabel);
            jsonObject.put("code",200);
            jsonObject.put("msg","插入成功");

        }catch (Exception e) {
            jsonObject.put("code",500);
            jsonObject.put("msg",e.getMessage());
        }
        return jsonObject;
    }

    @PostMapping(value = "/deleteNewLabel")
    public JSONObject deleteNewLabel(String id) {
        JSONObject jsonObject=new JSONObject();
        try{
            jsonObject.put("msg","删除成功");
            jsonObject.put("code",200);
            newLabelService.deleteNewLabelById(Integer.valueOf(id));

        }catch (Exception e) {
            jsonObject.put("code",500);
            jsonObject.put("msg",e.getMessage());
        }
        return jsonObject;
    }
    @PostMapping(value = "/selectNewLabel")
    public JSONObject selectNewLabel(Integer id) {
        JSONObject jsonObject=new JSONObject();
        try{
            jsonObject.put("code",200);
            jsonObject.put("msg","获取成功");
            jsonObject.put("data",newLabelService.selectNewsById(id));

        }catch (Exception e) {
            jsonObject.put("code",500);
            jsonObject.put("msg",e.getMessage());
        }
        return jsonObject;
    }
    @PostMapping(value = "/updateNewLabel")
    public JSONObject updateNewLabel(String id, String label_name, String parent, String content) {
        JSONObject jsonObject=new JSONObject();
        try{
            NewLabel newLabel = new NewLabel();
            newLabel.setLabel_content(content);
            newLabel.setLabel_name(label_name);
            if(parent!=null) {
                newLabel.setPid(Integer.valueOf(parent));
            }else{
                newLabel.setPid(null);
            }
            newLabel.setId(Integer.valueOf(id));
            newLabelService.updateNewLabelById(newLabel);
            jsonObject.put("code",200);
            jsonObject.put("msg","修改成功");

        }catch (Exception e) {
            jsonObject.put("code",500);
            jsonObject.put("msg",e.getMessage());
        }
        return jsonObject;
    }
}