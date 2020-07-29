package com.challenge.service.impl;

import com.challenge.entity.User;
import com.challenge.repository.UserRepository;
import com.challenge.service.interfaces.UserServiceInterface;
import lombok.AllArgsConstructor;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class UserService implements UserServiceInterface, UserDetailsService {

    private UserRepository userRepository;

    @Override
    public Optional<User> findById(Long userId) {
        return userRepository.findById(userId);
    }

    @Override
    public List<User> findByAccelerationName(String name) {
        return userRepository.findByCandidatesIdAccelerationName(name);
    }

    @Override
    public List<User> findByCompanyId(Long companyId) {
        return userRepository.findByCandidatesIdCompanyId(companyId);
    }

    public Optional<User> findByEmail(String email) {
        return userRepository.findByEmail(email);
    }
    
    @Override
    public UserDetails loadUserByUsername(String email) {
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("User not found"));
        List<GrantedAuthority> authorityListUser = AuthorityUtils.createAuthorityList("ROLE_USER");
        return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(), authorityListUser);
    }
}
