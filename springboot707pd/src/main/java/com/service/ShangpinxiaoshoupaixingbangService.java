package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShangpinxiaoshoupaixingbangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShangpinxiaoshoupaixingbangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShangpinxiaoshoupaixingbangView;


/**
 * 商品销售排行榜
 *
 * @author 
 * @email 
 * @date 2021-04-17 23:01:13
 */
public interface ShangpinxiaoshoupaixingbangService extends IService<ShangpinxiaoshoupaixingbangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangpinxiaoshoupaixingbangVO> selectListVO(Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper);
   	
   	ShangpinxiaoshoupaixingbangVO selectVO(@Param("ew") Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper);
   	
   	List<ShangpinxiaoshoupaixingbangView> selectListView(Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper);
   	
   	ShangpinxiaoshoupaixingbangView selectView(@Param("ew") Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper);
   	
}

