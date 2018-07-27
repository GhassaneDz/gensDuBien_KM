package fr.gtm.project.gensDuBien.business;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import fr.gtm.project.gensDuBien.dao.VolunteerRepository;

@Service
public class AuthService implements UserDetailsService {

	@Autowired
	private VolunteerRepository repo;

	@Override
	public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException {
		return this.repo.findOneByLogin(username);

	}

	

}
