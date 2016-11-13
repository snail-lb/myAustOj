package cn.edu.aust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.aust.dao.ProblemMapper;
import cn.edu.aust.pojo.Problem;
import cn.edu.aust.pojo.ProblemWithBLOBs;
import cn.edu.aust.pojo.form.ProblemForm;
import cn.edu.aust.service.IProblemService;

@Service("problemService")
public class ProblemServiceImpl implements IProblemService{

	@Resource
	private ProblemMapper problemMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer problemId) {
		return problemMapper.deleteByPrimaryKey(problemId);
	}

	@Override
	public int insert(ProblemWithBLOBs record) {
		return problemMapper.insert(record);
	}

	@Override
	public int insertSelective(ProblemWithBLOBs record) {
		return problemMapper.insertSelective(record);
	}

	@Override
	public ProblemWithBLOBs selectByPrimaryKey(Integer problemId) {
		return problemMapper.selectByPrimaryKey(problemId);
	}

	@Override
	public int updateByPrimaryKeySelective(ProblemWithBLOBs record) {
		return problemMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(ProblemWithBLOBs record) {
		return problemMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Problem record) {
		return problemMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<ProblemForm> selectByStage(Integer stage) {
		return problemMapper.selectByStage(stage);
	}

}
