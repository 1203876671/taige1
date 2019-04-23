package com.yc.education.service;

import com.yc.education.model.Details;

import java.util.List;

/**
 * @ClassName DetailsService
 * @Description TODO
 * @Author CaoLong
 * @Date 2019/4/23 9:14
 * @Version 1.0
 */
public interface DetailsService extends IService<Details> {



    /**
     * 根据applyid取对象
     *
     * @return
     */
    public List<Details> listDetails(int applyid);
}