package com.entity.view;

import com.entity.ShangpinxiaoshoupaixingbangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 商品销售排行榜
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-17 23:01:13
 */
@TableName("shangpinxiaoshoupaixingbang")
public class ShangpinxiaoshoupaixingbangView  extends ShangpinxiaoshoupaixingbangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShangpinxiaoshoupaixingbangView(){
	}
 
 	public ShangpinxiaoshoupaixingbangView(ShangpinxiaoshoupaixingbangEntity shangpinxiaoshoupaixingbangEntity){
 	try {
			BeanUtils.copyProperties(this, shangpinxiaoshoupaixingbangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
