package com.elearning.wave.service;

import com.elearning.wave.dto.EnrollRequestDTO;
import com.elearning.wave.dto.EnrolledCourseDTO;
import com.elearning.wave.model.base.Course;
import com.elearning.wave.model.base.EnrolledCourse;
import com.elearning.wave.model.base.Users;
import com.elearning.wave.repository.EnrolledCourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class EnrolledCourseService {
    private final EnrolledCourseRepository enrolledCourseRepository;
    private final CourseService courseService;
    private final UserService userService;

    @Autowired
    public EnrolledCourseService(
            EnrolledCourseRepository enrolledCourseRepository,
            CourseService courseService,
            UserService userService
    ) {
        this.enrolledCourseRepository = enrolledCourseRepository;
        this.courseService = courseService;
        this.userService = userService;
    }

    public EnrolledCourseDTO covertEntityToEnrolledCourseDto(EnrolledCourse enrolledCourse) {
        EnrolledCourseDTO enrolledCourseDTO = new EnrolledCourseDTO();
        enrolledCourseDTO.setCourseDTO(courseService.convertEntityToCourseDto(enrolledCourse.getCourse()));
        enrolledCourseDTO.setTotalPointEarned(enrolledCourse.getTotalPointEarned());

        return enrolledCourseDTO;
    }

    public List<EnrolledCourseDTO> getUserEnrolledCoursesById(long userId) {
        return enrolledCourseRepository.findAllByUsersUserId(userId)
                .stream()
                .map(this::covertEntityToEnrolledCourseDto)
                .collect(Collectors.toList());
    }

    public void enrollCourse(EnrollRequestDTO enrollRequestDTO) {
        Optional<EnrolledCourse> enrolledCourseOptional = enrolledCourseRepository.findByUsersUserIdAndCourseCourseId(
                enrollRequestDTO.getUserId(),
                enrollRequestDTO.getCourseId()
        );

        if (enrolledCourseOptional.isPresent()) {
            throw new IllegalStateException("Course Already Taken");
        }

        Optional<Users> users = Optional.ofNullable(userService.findById(enrollRequestDTO.getUserId())
                .orElseThrow(() -> new IllegalArgumentException("user not found")));
        Optional<Course> course = Optional.ofNullable(courseService.findById(enrollRequestDTO.getCourseId())
                .orElseThrow(() -> new IllegalArgumentException("course not found")));

        EnrolledCourse enrolledCourse = new EnrolledCourse();
        enrolledCourse.setUsers(users.get());
        enrolledCourse.setCourse(course.get());
        enrolledCourseRepository.save(enrolledCourse);
    }
}
