package kr.co.form.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.form.dao.FormDAO;
import kr.co.form.dao.FormService;
import kr.co.form.vo.FormVO;

@Service("formService")
public class FormServiceImpl implements FormService {

	@Autowired
	FormDAO dao;
	
	@Override
	public void insertForm(FormVO vo) {
		dao.insertForm(vo);
	}

}
