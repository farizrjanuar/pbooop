package com.elearning.wave.model.base;
import jakarta.persistence.*;

@Entity
@Table(name = "modules")
public class Module extends BaseEntity {
    private String title;
    private String description;
    private String content;
    private static int POINT_REQUIRED = 10;
    @ManyToOne
    @JoinColumn(name = "course_id")
    private Course course;
    @OneToOne(mappedBy = "modules")
    private Quiz quiz;

    public Module(String title, String description, String content, Course course, Quiz quiz) {
        this.title = title;
        this.description = description;
        this.content = content;
        this.course = course;
        this.quiz = quiz;
    }

    public Module() {
    }

    public static int getPointRequired() {
        return POINT_REQUIRED;
    }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }
    public Course getCourse() { return course; }
    public void setCourse(Course course) { this.course = course; }
    public Quiz getQuiz() { return quiz; }
    public void setQuiz(Quiz quiz) { this.quiz = quiz; }
}
