package cn.qs304.oa.test;

import cn.qs304.oa.service.NewLabelService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/spring-config.xml","classpath:spring/mybatis-config.xml"})
public class testAll {

    @Autowired
    NewLabelService newLabelService;

    @Test
    public void testFindAll() {
    }
}
