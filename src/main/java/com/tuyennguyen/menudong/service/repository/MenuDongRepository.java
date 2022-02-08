package com.tuyennguyen.menudong.service.repository;

import com.tuyennguyen.menudong.service.entity.MenuDong;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MenuDongRepository extends JpaRepository<MenuDong, Integer> {

}
