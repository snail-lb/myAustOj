package cn.edu.aust.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;

import cn.edu.aust.dao.ArticleMapper;
import cn.edu.aust.pojo.Tags;
import cn.edu.aust.pojo.form.ArticleForm;
import cn.edu.aust.pojo.form.ArticleJSONForm;
import cn.edu.aust.service.IArticleService;
import cn.edu.aust.util.JSONFileUtil;
import cn.edu.aust.util.MyLogUtil;

@Service("articleService")
public class ArticleServiceImpl implements IArticleService{
	@Resource
	private ArticleMapper articleMapper;

	@Override
	public List<ArticleForm> getArticleFormList() {
		List<ArticleForm> afList = this.articleMapper.getArticleFormList();
		//查询标签
		for(ArticleForm af:afList){
			List<String> tags = this.articleMapper.getArticleTags(af.getArticleId());
			af.setTags(tags);
		}
		return afList;
	}

	@Override
	public ArticleForm getArticleById(Integer articleId) {
		ArticleForm af = this.articleMapper.getArticleById(articleId);
		List<String> tags = this.articleMapper.getArticleTags(af.getArticleId());
		af.setTags(tags);
		return af;
	}

	@Override
	public List<ArticleForm> searchArticle(String search) {
		//设置模糊搜索关键字
		search = new StringBuilder("%").append(search).append("%").toString();
		//根据搜索类容查找到所有文章ID
		List<Integer> articleIdList = this.articleMapper.getArticleIdSearch(search);
		List<ArticleForm> articleList = new ArrayList<>();
		for(Integer articleId: articleIdList){
			ArticleForm af = this.articleMapper.getArticleById(articleId);
			List<String> tags = this.articleMapper.getArticleTags(af.getArticleId());
			af.setTags(tags);
			articleList.add(af);
		}
		return articleList;
	}

	@Override
	public void refreshTags(String path) {
		List<Tags> tagsJSONList = this.articleMapper.getTagsList();
		String text = JSON.toJSONString(tagsJSONList);
		Logger log =  MyLogUtil.getLogger();
		log.info("tagsJSONList写入文件路径：" + path);
		log.info("转换为JSON的Tags："+text);
		JSONFileUtil.refreshTags(path, text);
	}

	@Override
	public void refreshArticle(String path) {
		List<ArticleJSONForm> articleJSONList = this.articleMapper.getArticleJSONList();
		
		String text = JSON.toJSONString(articleJSONList);
		Logger log =  MyLogUtil.getLogger();
		log.info("articleJSONList写入文件路径：" + path);
		log.info("转换为JSON的article："+text);
		JSONFileUtil.refreshTags(path, text);
	}
	
	
	
}