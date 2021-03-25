package kr.co.form.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.form.dao.FormDAO;
import kr.co.form.vo.FormVO;

@Repository("formDAO")
public class FormDAOImpl implements FormDAO {

	
	@Autowired
	SqlSession sqlSession;
	
	
	@Override
	public void insertForm(FormVO vo) {
		sqlSession.insert("fm.insertForm",vo);
	}
}
