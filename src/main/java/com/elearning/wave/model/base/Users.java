package com.elearning.wave.model.base;
import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "users")
public class Users {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private long userId;
    private String fullname;
    private String email;
    private String password;
    @OneToMany(mappedBy = "users")
    private List<EnrolledCourse> enrolledCourses;

    public Users(long userId, String fullname, String username, String email, String password, List<EnrolledCourse> enrolledCourses) {
        this.userId = userId;
        this.fullname = fullname;
        this.email = email;
        this.password = password;
        this.enrolledCourses = enrolledCourses;
    }

    public Users() {
    }

    public String getFullname() {
        return fullname;
    }
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }
    public List<EnrolledCourse> getEnrolledCourses() {
        return enrolledCourses;
    }
    public void setEnrolledCourses(List<EnrolledCourse> enrolledCourses) {
        this.enrolledCourses = enrolledCourses;
    }
    public long getUserId() { return userId; }
    public void setUserId(long userId) { this.userId = userId; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
