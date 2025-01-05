package com.elearning.wave.model.base;

import jakarta.persistence.*;

@Entity
@Table(name = "options")
public class Options extends BaseEntity {
    private String options;
    @ManyToOne
    @JoinColumn(name = "question_id")
    private Question question;

    public Options(String options, Question question) {
        this.options = options;
        this.question = question;
    }

    public Options() {
    }

    public String getOptions() { return options; }
    public void setOptions(String options) { this.options = options; }
    public Question getQuestion() { return question; }
    public void setQuestion(Question question) { this.question = question; }
}
