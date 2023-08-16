package com.example.springlb.service.impl;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.IdUtil;
import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.entity.admin;
import com.example.springlb.entity.admin;
import com.example.springlb.entity.admin;
import com.example.springlb.mapper.AdminMapper;
import com.example.springlb.service.IAdminService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class AdminService implements IAdminService {
    Map idhash=new HashMap();

    @Autowired
    AdminMapper adminMapper;

    @Override
    public List<admin> list() {
        return adminMapper.list();
    }
    @Override
    public Object page(Pagerequest pagerequest) {
        PageHelper.startPage(pagerequest.getPageNum(),pagerequest.getPageSize());
        List<admin> admins=adminMapper.listByCondition(pagerequest);
        for(admin a:admins){              //为邮箱添加@xx.com后缀
            String s=a.getEmail();
            char c=s.charAt(s.length()-1);
            int n= c;
            if(n%2 == 0)
                a.setEmail(a.getEmail()+"@Gmail.com");
            else
            a.setEmail(a.getEmail()+"@qq.com");
        }
        return new PageInfo<>(admins);
    }
    @Override
    public void add(admin u) {
        List<admin> ids =this.list();          //随机生成1000以内的管理员编号
        for (admin a:ids) {
            idhash.put(a.getId(),a.getAdminname());
        }
        Random random=new Random();
        int n;
        do {
             n = random.nextInt(1000);
        }while (idhash.containsKey(n));
            u.setId(n);
        adminMapper.add(u);
    }
    @Override
    public admin getByid(String id){
        return adminMapper.getByid(id);
    }
    @Override
    public void update(admin admin){
        adminMapper.update(admin);
    }
    @Override

    public void delete(String id){adminMapper.delete(id);}
}
