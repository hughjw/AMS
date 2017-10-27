package com.yakesoft.ssm.mapper;

import com.yakesoft.ssm.entity.Address;

import java.util.List;

public interface AddressMapper {
    /**
     * 获得所有通讯录
     * @return
     */
    List<Address> getAll();


    /**
     * 获得指定的联系人
     */
    Address Addressget(int id);

    /**
     *  删除指定的联系人
     * @param address
     */
    boolean delete(Address address);

    /**
     * 更新指定的联系人
     * @param address
     */

    boolean update(Address address);

    /**
     * 新增联系人
     * @param address
     */
    void add(Address address);
}
