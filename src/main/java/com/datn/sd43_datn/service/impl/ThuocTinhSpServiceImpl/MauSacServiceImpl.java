package com.datn.sd43_datn.service.impl.ThuocTinhSpServiceImpl;

import com.datn.sd43_datn.entity.ThuocTinhSp.MauSac;
import com.datn.sd43_datn.repository.ThuocTinhSpRepository.MauSacRepository;
import com.datn.sd43_datn.service.ThuocTinhSpService.MauSacService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service
public class MauSacServiceImpl implements MauSacService {
    @Autowired
    MauSacRepository MausacEntityRepository;

    @Override
    public List<MauSac> findAll() {
        return MausacEntityRepository.findAll();
    }

    @Override
    public List<MauSac> findAllById(Iterable<Long> integers) {
        return MausacEntityRepository.findAllById(integers);
    }

    @Override
    public <S extends MauSac> S save(S entity) {
        return MausacEntityRepository.save(entity);
    }

    @Override
    public Optional<MauSac> findById(Long integer) {
        return MausacEntityRepository.findById(integer);
    }

    @Override
    public void deleteById(Long integer) {
        MausacEntityRepository.deleteById(integer);
    }
    @Override
    public Page<MauSac> Page(String keyword, int pageNumber) {
        Pageable pageable = PageRequest.of(pageNumber - 1, 10);
        if (keyword != null) {
            return MausacEntityRepository.findByKeyWord(pageable, keyword);
        }
        return MausacEntityRepository.findAll(pageable);
    }
    @Override
    public void findTrangThai1(Long id){
        MausacEntityRepository.updateTrangThai1(id);
    }
    @Override
    public void findTrangThai0(Long id){
        MausacEntityRepository.updateTrangThai0(id);
    }
}
