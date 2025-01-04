package com.elearning.wave.model.base;

import jakarta.persistence.*;

@Entity
@Table(name = "options")
public class Options {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "option_id")
    private long optionId;
    private String options;
    @ManyToOne
    @JoinColumn(name = "question_id")
    private Question question;

    public Options() {
    }

    public Options(long optionId, String options, Question question) {
        this.optionId = optionId;
        this.options = options;
        this.question = question;
    }

    public long getOptionId() { return optionId; }
    public void setOptionId(long optionId) { this.optionId = optionId; }
    public String getOptions() { return options; }
    public void setOptions(String options) { this.options = options; }
    public Question getQuestion() { return question; }
    public void setQuestion(Question question) { this.question = question; }
}
