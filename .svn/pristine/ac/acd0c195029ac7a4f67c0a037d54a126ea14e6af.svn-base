package cn.weidai.dao.mapper;

import cn.weidai.pojo.PayUser;
import cn.weidai.pojo.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PayUserMapper {
    int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(String id);

    int insert(PayUser record);

    int insertSelective(PayUser record);

    List<PayUser> selectByExample(UserExample example);

    PayUser selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") PayUser record, @Param("example") UserExample example);

    int updateByExample(@Param("record") PayUser record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(PayUser record);

    int updateByPrimaryKey(PayUser record);
}