package com.elearning.wave.controller;

import com.elearning.wave.dto.*;
import com.elearning.wave.service.EnrolledCourseService;
import com.elearning.wave.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/users")
@CrossOrigin
public class UserController {
    private final UserService userService;
    private final EnrolledCourseService enrolledCourseService;

    @Autowired
    public UserController(UserService userService, EnrolledCourseService enrolledCourseService) {
        this.userService = userService;
        this.enrolledCourseService = enrolledCourseService;
    }

    @GetMapping("/{userId}")
    public ResponseEntity<UserDTO> getUserById(@PathVariable long userId) {
        try {
            UserDTO userDTO = userService.getUserById(userId);
            return new ResponseEntity<>(userDTO, HttpStatus.FOUND);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/{userId}/courses")
    public ResponseEntity<List<EnrolledCourseDTO>> getUserEnrolledCoursesById(@PathVariable long userId) {
        try {
            List<EnrolledCourseDTO> enrolledCourseDTOS = enrolledCourseService.getUserEnrolledCoursesById(userId);
            return new ResponseEntity<>(enrolledCourseDTOS, HttpStatus.FOUND);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/enroll")
    public ResponseEntity<String> enrollCourse(@RequestBody EnrollRequestDTO enrollRequestDTO) {
        try {
            String message = enrolledCourseService.enrollCourse(enrollRequestDTO);
            return new ResponseEntity<>(message, HttpStatus.OK);
        } catch (IllegalArgumentException err) {
            return new ResponseEntity<>(err.getMessage(), HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody LoginDTO loginDTO) {
        try {
            AuthResponseDTO response = userService.authenticateUser(loginDTO);
            return new ResponseEntity<>(response, HttpStatus.OK);
        } catch (IllegalArgumentException e) {
            return new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping("/register")
    public ResponseEntity<String> register(@RequestBody RegisterDTO registerDTO) {
        try {
            String response = userService.register(registerDTO);
            return new ResponseEntity<>(response,HttpStatus.OK);
        } catch (IllegalArgumentException err) {
            return new ResponseEntity<>(err.getMessage(), HttpStatus.BAD_REQUEST);
        }
    }
}
