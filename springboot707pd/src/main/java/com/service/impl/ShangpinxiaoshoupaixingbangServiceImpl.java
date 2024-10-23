package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ShangpinxiaoshoupaixingbangDao;
import com.entity.ShangpinxiaoshoupaixingbangEntity;
import com.service.ShangpinxiaoshoupaixingbangService;
import com.entity.vo.ShangpinxiaoshoupaixingbangVO;
import com.entity.view.ShangpinxiaoshoupaixingbangView;

@Service("shangpinxiaoshoupaixingbangService")
public class ShangpinxiaoshoupaixingbangServiceImpl extends ServiceImpl<ShangpinxiaoshoupaixingbangDao, ShangpinxiaoshoupaixingbangEntity> implements ShangpinxiaoshoupaixingbangService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShangpinxiaoshoupaixingbangEntity> page = this.selectPage(
                new Query<ShangpinxiaoshoupaixingbangEntity>(params).getPage(),
                new EntityWrapper<ShangpinxiaoshoupaixingbangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper) {
		  Page<ShangpinxiaoshoupaixingbangView> page =new Query<ShangpinxiaoshoupaixingbangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShangpinxiaoshoupaixingbangVO> selectListVO(Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShangpinxiaoshoupaixingbangVO selectVO(Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShangpinxiaoshoupaixingbangView> selectListView(Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangpinxiaoshoupaixingbangView selectView(Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
