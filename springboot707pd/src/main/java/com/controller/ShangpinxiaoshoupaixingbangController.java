package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.ShangpinxiaoshoupaixingbangEntity;
import com.entity.view.ShangpinxiaoshoupaixingbangView;

import com.service.ShangpinxiaoshoupaixingbangService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 商品销售排行榜
 * 后端接口
 * @author 
 * @email 
 * @date 2021-04-17 23:01:13
 */
@RestController
@RequestMapping("/shangpinxiaoshoupaixingbang")
public class ShangpinxiaoshoupaixingbangController {
    @Autowired
    private ShangpinxiaoshoupaixingbangService shangpinxiaoshoupaixingbangService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShangpinxiaoshoupaixingbangEntity shangpinxiaoshoupaixingbang,
		HttpServletRequest request){
        EntityWrapper<ShangpinxiaoshoupaixingbangEntity> ew = new EntityWrapper<ShangpinxiaoshoupaixingbangEntity>();
		PageUtils page = shangpinxiaoshoupaixingbangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shangpinxiaoshoupaixingbang), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShangpinxiaoshoupaixingbangEntity shangpinxiaoshoupaixingbang, HttpServletRequest request){
        EntityWrapper<ShangpinxiaoshoupaixingbangEntity> ew = new EntityWrapper<ShangpinxiaoshoupaixingbangEntity>();
		PageUtils page = shangpinxiaoshoupaixingbangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shangpinxiaoshoupaixingbang), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShangpinxiaoshoupaixingbangEntity shangpinxiaoshoupaixingbang){
       	EntityWrapper<ShangpinxiaoshoupaixingbangEntity> ew = new EntityWrapper<ShangpinxiaoshoupaixingbangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shangpinxiaoshoupaixingbang, "shangpinxiaoshoupaixingbang")); 
        return R.ok().put("data", shangpinxiaoshoupaixingbangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShangpinxiaoshoupaixingbangEntity shangpinxiaoshoupaixingbang){
        EntityWrapper< ShangpinxiaoshoupaixingbangEntity> ew = new EntityWrapper< ShangpinxiaoshoupaixingbangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shangpinxiaoshoupaixingbang, "shangpinxiaoshoupaixingbang")); 
		ShangpinxiaoshoupaixingbangView shangpinxiaoshoupaixingbangView =  shangpinxiaoshoupaixingbangService.selectView(ew);
		return R.ok("查询商品销售排行榜成功").put("data", shangpinxiaoshoupaixingbangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ShangpinxiaoshoupaixingbangEntity shangpinxiaoshoupaixingbang = shangpinxiaoshoupaixingbangService.selectById(id);
        return R.ok().put("data", shangpinxiaoshoupaixingbang);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ShangpinxiaoshoupaixingbangEntity shangpinxiaoshoupaixingbang = shangpinxiaoshoupaixingbangService.selectById(id);
        return R.ok().put("data", shangpinxiaoshoupaixingbang);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShangpinxiaoshoupaixingbangEntity shangpinxiaoshoupaixingbang, HttpServletRequest request){
    	shangpinxiaoshoupaixingbang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shangpinxiaoshoupaixingbang);
        shangpinxiaoshoupaixingbangService.insert(shangpinxiaoshoupaixingbang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ShangpinxiaoshoupaixingbangEntity shangpinxiaoshoupaixingbang, HttpServletRequest request){
    	shangpinxiaoshoupaixingbang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shangpinxiaoshoupaixingbang);
        shangpinxiaoshoupaixingbangService.insert(shangpinxiaoshoupaixingbang);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ShangpinxiaoshoupaixingbangEntity shangpinxiaoshoupaixingbang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shangpinxiaoshoupaixingbang);
        shangpinxiaoshoupaixingbangService.updateById(shangpinxiaoshoupaixingbang);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        shangpinxiaoshoupaixingbangService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<ShangpinxiaoshoupaixingbangEntity> wrapper = new EntityWrapper<ShangpinxiaoshoupaixingbangEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = shangpinxiaoshoupaixingbangService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
