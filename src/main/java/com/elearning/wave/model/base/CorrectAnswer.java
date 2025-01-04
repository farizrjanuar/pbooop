package com.elearning.wave.model.base;

import jakarta.persistence.*;

@Entity
@Table(name = "correct_answers")
public class CorrectAnswer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "correct_answer_id")
    private long correctAnswerId;
    @Column(name = "correct_answer")
    private String correctAnswer;
    @ManyToOne
    @JoinColumn(name = "question_id")
    private Question question;

    public CorrectAnswer() {
    }

    public CorrectAnswer(long correctAnswerId, String correctAnswer, Question question) {
        this.correctAnswerId = correctAnswerId;
        this.correctAnswer = correctAnswer;
        this.question = question;
    }

    public long getCorrectAnswerId() { return correctAnswerId; }
    public void setCorrectAnswerId(long correctAnswerId) { this.correctAnswerId = correctAnswerId; }
    public String getCorrectAnswer() { return correctAnswer; }
    public void setCorrectAnswer(String correctAnswer) { this.correctAnswer = correctAnswer; }
    public Question getQuestion() { return question; }
    public void setQuestion(Question question) { this.question = question; }
}
