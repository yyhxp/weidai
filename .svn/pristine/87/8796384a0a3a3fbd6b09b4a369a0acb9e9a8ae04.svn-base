package cn.weidai.service.alipay.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.weidai.dao.mapper.ProductMapper;
import cn.weidai.pojo.Product;
import cn.weidai.pojo.ProductExample;
import cn.weidai.service.alipay.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productMapper;
	
	@Override
	public List<Product> getProducts() {
		
		ProductExample pe = new ProductExample();
//		Criteria pc = pe.createCriteria();
		List<Product> list = productMapper.selectByExample(pe);
		
		return list;
	}

	@Override
	public Product getProductById(String productId) {
		
		return productMapper.selectByPrimaryKey(productId);
	}

}
