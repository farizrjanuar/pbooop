package com.elearning.wave.model.base;
import jakarta.persistence.*;
import java.util.List;
import java.util.ArrayList;

@Entity
@Table(name = "enrolled_course")
public class EnrolledCourse {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "enroll_id")
    private long enrollId;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private Users users;
    @ManyToOne
    @JoinColumn(name = "course_id")
    private Course course;
    private int totalPointEarned;
    @ElementCollection
    private List<Long> accessedModules = new ArrayList<>();

    public EnrolledCourse(long enrollId, Users users, Course course) {
        this.enrollId = enrollId;
        this.users = users;
        this.course = course;
        this.totalPointEarned = 0;
    }

    public EnrolledCourse() {
    }

    public boolean hasAccessedModule(long moduleId) {
        return accessedModules.contains(moduleId);
    }
    public void grantAccessToModule(long moduleId) {
        accessedModules.add(moduleId);
    }
    public long getEnrollId() { return enrollId; }
    public void setEnrollId(long enrollId) { this.enrollId = enrollId; }
    public Users getUsers() { return users; }
    public void setUsers(Users users) { this.users = users; }
    public Course getCourse() { return course; }
    public void setCourse(Course course) { this.course = course; }
    public int getTotalPointEarned() { return totalPointEarned; }
    public void setTotalPointEarned(int totalPointEarned) { this.totalPointEarned = totalPointEarned;}
}
