package com.yakesoft.ssm.controller;

import com.yakesoft.ssm.entity.Address;
import com.yakesoft.ssm.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/address")
public class AddressController {
    @Autowired
    private AddressService  addressService;
    /**
     * 获取所有用通讯录列表
     * @param request
     * @return
     */
        @RequestMapping ("/getAddress")
    public String getAllAddress(HttpServletRequest request, Model model){
        List<Address> address = addressService.getAll();
        model.addAttribute("addresslist",address);
        request.setAttribute("addressList",address);
        return "/allAddress";
        }
    /**
     * 跳转到田间通讯录界面
     *
     */
    @RequestMapping("/toAddress")
    public String toAddAddress (){
        return "/addAddress";
    }
    /**
     * 添加通讯录并重定向
     * @param
     * @param
     * @return
     */
    @RequestMapping("/toupdateaddress")
    public String toupdateaddress(){
        return "/editAddress";
    }

    @RequestMapping("/addAddress")
    public String addAddress(Address address,Model model){
        addressService.add(address);
        return "redirect:/address/getAllAddress";
    }
    /**
     *
     * @param
     * @param request
     * @return
     */
    /**
     @RequestMapping("/updateUser")
     public String updateUser(Address user,HttpServletRequest request,Model model){
     if(userService.update(user)){
     user = userService.findById(user.getId());
     request.setAttribute("user", user);
     model.addAttribute("user", user);
     return "redirect:/user/getAllUser";
     }else{
     return "/error";
     }
     }
     */


    @RequestMapping("/updateaddress")
    public String updateaddress(Address address,HttpServletRequest request,Model model){
        System.out.println(address);
        if(addressService.update(address)){
            address=addressService.Addressget(address.getId());
            request.setAttribute("address", address);
            model.addAttribute("address",address);
            return "redirect:/address/getAllAddress";
        }else{
            return  "/error";
        }

    }


    /**
     * 根据id查询单个用户
     * @param id
     * @param request
     * @return
     */
    @RequestMapping("/getAddress")
    public String getaddress(int id,HttpServletRequest request,Model model){
        request.setAttribute("address", addressService.Addressget(id));
        // model.addAttribute("address", addressService.Addressget(id));
        return "/editAddress";
    }
    /**
     * 删除
     * @param
     * @param request
     * @param response

     @RequestMapping("/delUser")
     public void delUser(int id,HttpServletRequest request,HttpServletResponse response){
     String result = "{\"result\":\"error\"}";
     if(addressService.delete(id)){
     result = "{\"result\":\"success\"}";
     }
     response.setContentType("application/json");
     try {
     PrintWriter out = response.getWriter();
     out.write(result);
     } catch (IOException e) {
     e.printStackTrace();
     }
     }*/
    @RequestMapping("/deladdress")
    public String deladdress(Address address,HttpServletRequest request,HttpServletResponse response){
        String result = "{\"result\":\"error\"}";
        if(addressService.delete(address)){
            result = "{\"result\":\"success\"}";
        }
        response.setContentType("application/json");
        try {
            PrintWriter out = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/address/getAllAddress";
    }
}
