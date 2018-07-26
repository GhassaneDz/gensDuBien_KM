package fr.gtm.project.gensDuBien.business;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;

public class CrudService<ENTITY> {

	@Autowired
	protected JpaRepository<ENTITY, Integer> repo;

	public ENTITY create(final ENTITY entity) {
		return this.save(entity);
	}

	public void delete(final Integer id) {
		this.repo.deleteById(id);
	}

	public ENTITY edit(final ENTITY entity) {
		if (entity.getId() == null) {
			throw new IllegalArgumentException("Cannot update an article without its id.");
		}
		return this.save(entity);
	}

	public List<ENTITY> getList() {
		return this.repo.findAll();
	}

	public ENTITY read(final Integer id) {
		ENTITY result = null;
		final Optional<ENTITY> wrapper = this.repo.findById(id);
		if (wrapper.isPresent()) {
			result = wrapper.get();
		}
		return result;
	}

	protected ENTITY save(final ENTITY entity) {
		return this.repo.save(entity);
	}
}
