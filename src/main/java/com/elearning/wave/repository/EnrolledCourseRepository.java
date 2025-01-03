package com.elearning.wave.repository;

import com.elearning.wave.model.base.EnrolledCourse;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface EnrolledCourseRepository extends JpaRepository<EnrolledCourse, Long> {
    public Optional<EnrolledCourse> findByUsersUserIdAndCourseCourseId(long userId, long courseId);
    public Optional<List<EnrolledCourse>> findAllByUsersUserId(long userId);
}
