package cn.weidai.service.Middleman;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.weidai.dao.middleman.MiddlemanMapper;
import cn.weidai.pojo.Middleman;
@Service
public class MiddlemanServiceImpl implements MiddlemanService {
	@Resource
	private MiddlemanMapper middlemanMapper;
	/* 增加中间商的收款明细
	 * (non-Javadoc)
	 * @see cn.weidai.service.Middleman.MiddlemanService#addMiddleman(cn.weidai.pojo.Middleman)
	 */
	@Override
	public int addMiddleman(Middleman middleman) {
		return middlemanMapper.addMiddleman(middleman);
	}

}
