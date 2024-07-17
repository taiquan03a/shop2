package com.datn.sd43_datn.service.impl.ThuocTinhSpServiceImpl;

import com.datn.sd43_datn.entity.ThuocTinhSp.ChatLieu;
import com.datn.sd43_datn.repository.ThuocTinhSpRepository.ChatLieuRepository;
import com.datn.sd43_datn.service.ThuocTinhSpService.ChatLieuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class ChatLieuServiceImpl implements ChatLieuService {
    @Autowired
    ChatLieuRepository ChatlieuEntityRepository;

    @Override
    public List<ChatLieu> findAll() {
        return ChatlieuEntityRepository.findAll();
    }

    @Override
    public List<ChatLieu> findAllById(Iterable<Long> integers) {
        return ChatlieuEntityRepository.findAllById(integers);
    }

    @Override
    public <S extends ChatLieu> S save(S entity) {
        return ChatlieuEntityRepository.save(entity);
    }

    @Override
    public Optional<ChatLieu> findById(Long integer) {
        return ChatlieuEntityRepository.findById(integer);
    }

    @Override
    public void deleteById(Long integer) {
        ChatlieuEntityRepository.deleteById(integer);
    }
    @Override
    public Page<ChatLieu> Page(String keyword, int pageNumber) {
        Pageable pageable = PageRequest.of(pageNumber - 1, 10);
        if (keyword != null) {
            return ChatlieuEntityRepository.findByKeyWord(pageable, keyword);
        }
        return ChatlieuEntityRepository.findAll(pageable);
    }
    @Override
    public void findTrangThai1(Long id){
        ChatlieuEntityRepository.updateTrangThai1(id);
    }
    @Override
    public void findTrangThai0(Long id){
        ChatlieuEntityRepository.updateTrangThai0(id);
    }
}
