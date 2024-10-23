package com.dao;

import com.entity.ShangpinxiaoshoupaixingbangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShangpinxiaoshoupaixingbangVO;
import com.entity.view.ShangpinxiaoshoupaixingbangView;


/**
 * 商品销售排行榜
 * 
 * @author 
 * @email 
 * @date 2021-04-17 23:01:13
 */
public interface ShangpinxiaoshoupaixingbangDao extends BaseMapper<ShangpinxiaoshoupaixingbangEntity> {
	
	List<ShangpinxiaoshoupaixingbangVO> selectListVO(@Param("ew") Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper);
	
	ShangpinxiaoshoupaixingbangVO selectVO(@Param("ew") Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper);
	
	List<ShangpinxiaoshoupaixingbangView> selectListView(@Param("ew") Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper);

	List<ShangpinxiaoshoupaixingbangView> selectListView(Pagination page,@Param("ew") Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper);
	
	ShangpinxiaoshoupaixingbangView selectView(@Param("ew") Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper);
	
}
