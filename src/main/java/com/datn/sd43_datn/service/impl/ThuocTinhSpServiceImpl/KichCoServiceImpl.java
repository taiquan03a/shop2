package com.datn.sd43_datn.service.impl.ThuocTinhSpServiceImpl;

import com.datn.sd43_datn.entity.ThuocTinhSp.KichCo;
import com.datn.sd43_datn.repository.ThuocTinhSpRepository.KichCoRepository;
import com.datn.sd43_datn.service.ThuocTinhSpService.KichCoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service
public class KichCoServiceImpl implements KichCoService {
    @Autowired
    KichCoRepository KichcoEntityRepository;

    @Override
    public List<KichCo> findAll() {
        return KichcoEntityRepository.findAll();
    }

    @Override
    public List<KichCo> findAllById(Iterable<Long> integers) {
        return KichcoEntityRepository.findAllById(integers);
    }

    @Override
    public <S extends KichCo> S save(S entity) {
        return KichcoEntityRepository.save(entity);
    }

    @Override
    public Optional<KichCo> findById(Long integer) {
        return KichcoEntityRepository.findById(integer);
    }

    @Override
    public void deleteById(Long integer) {
        KichcoEntityRepository.deleteById(integer);
    }
    @Override
    public Page<KichCo> Page(String keyword, int pageNumber) {
        Pageable pageable = PageRequest.of(pageNumber - 1, 10);
        if (keyword != null) {
            return KichcoEntityRepository.findByKeyWord(pageable, keyword);
        }
        return KichcoEntityRepository.findAll(pageable);
    }
    @Override
    public void findTrangThai1(Long id){
        KichcoEntityRepository.updateTrangThai1(id);
    }
    @Override
    public void findTrangThai0(Long id){
        KichcoEntityRepository.updateTrangThai0(id);
    }
}

