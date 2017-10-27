package com.yakesoft.ssm.serviceimpl;

import com.yakesoft.ssm.entity.Address;
import com.yakesoft.ssm.mapper.AddressMapper;
import com.yakesoft.ssm.service.AddressService;

import javax.annotation.Resource;
import java.util.List;

public class AddressServiceimpl implements AddressService{
    @Resource
    private AddressMapper mapper;
    public List<Address> getAll() {
        List<Address> findAllList=mapper.getAll();
        return  findAllList ;
    }

    public Address Addressget(int id) {
        Address address = mapper.Addressget(id);
        return address;
    }

    public boolean delete(Address address) {
        return mapper.delete(address);
    }

    public boolean update(Address address) {

        return mapper.update(address);
    }

    public void add(Address address) {
        mapper.add(address);

    }



}