package com.tuyennguyen.menudong.service.service;

import com.tuyennguyen.menudong.service.entity.MenuDong;
import com.tuyennguyen.menudong.service.repository.MenuDongRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuDongService {

    @Autowired
    private MenuDongRepository menuDongRepo;

    public List<MenuDong> findAll() {
        return menuDongRepo.findAll();
    }

    public List<MenuDong> saveAll(List<MenuDong> listMenuDong) {
        return menuDongRepo.saveAll(listMenuDong);
    }

    public MenuDong findById(Integer id) {
        return menuDongRepo.findById(id).get();
    }

    public MenuDong update(MenuDong obj) {
        return menuDongRepo.save(obj);
    }

    public void deleteById(int id) {
        menuDongRepo.deleteById(id);
    }

}
