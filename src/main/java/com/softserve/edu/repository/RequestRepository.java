package com.softserve.edu.repository;

import java.util.Calendar;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.softserve.edu.entity.Request;

public interface RequestRepository extends JpaRepository<Request, Integer> {

	@Query("Select req FROM Request req WHERE req.endDate=:endDate AND req.beginDate=:beginDate AND req.hosting=:hostingId AND req.author=:userId")
	 List<Request> checkExistingRequest(
			@Param("endDate") Calendar endDate,
			@Param("beginDate") Calendar beginDate,
			@Param("hostingId") int hostingId, @Param("userId") int userId);

}
