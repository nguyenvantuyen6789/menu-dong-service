package com.tuyennguyen.menudong.service.controller;

import com.tuyennguyen.menudong.service.entity.MenuDong;
import com.tuyennguyen.menudong.service.service.MenuDongService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/admin/api/v0")
public class MenuDongController {

    Logger log = LoggerFactory.getLogger(MenuDongController.class);

    @Autowired
    private MenuDongService menuDongService;

    @GetMapping("menu-dong")
    public List<MenuDong> showList(@RequestParam(required = false) String keyword) {
        // log info
        log.debug("Go to: /admin/menu-dong");
        List<MenuDong> products = menuDongService.findAll();

        return products;
    }

    @PostMapping("/menu-dong")
    public List<MenuDong> save(@RequestBody List<MenuDong> listProduct) {
        // log info
        log.debug("Go to: /admin/menu-dong/save");

        menuDongService.saveAll(listProduct);

        return listProduct;
    }

    @GetMapping("/menu-dong/{id}")
    public MenuDong getById(@PathVariable int id) {
        // log info
        log.debug("Go to: /admin/menu-dong/" + id);

        try {
            MenuDong obj = menuDongService.findById(id);
            return obj;
        } catch (Exception e) {
            log.warn(e.getMessage());
            return null;
        }
    }

    @PutMapping("/menu-dong")
    public MenuDong update(@RequestBody MenuDong obj) throws IOException {
        // log info
        log.debug("Go to: /admin/menu-dong/update/" + obj.getMenuDongId());

        menuDongService.update(obj);

        return obj;
    }

    @DeleteMapping("/menu-dong/{id}")
    public Integer delete(@PathVariable int id) {
        // log info
        log.debug("Go to: /admin/menu-dong/delete/" + id);

        try {
            menuDongService.deleteById(id);
        } catch (Exception e) {
            log.error(e.getMessage());
            return 0;
        }

        return id;
    }

}
