package com.elearning.wave.service;

import com.elearning.wave.dto.OptionDTO;
import com.elearning.wave.dto.QuestionDTO;
import com.elearning.wave.model.base.Options;
import com.elearning.wave.model.base.Question;
import com.elearning.wave.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class QuestionService {

    private final QuestionRepository questionRepository;

    @Autowired
    public QuestionService(QuestionRepository questionRepository) {
        this.questionRepository = questionRepository;
    }

    public OptionDTO convertEntityToOptionDto(Options options) {
        OptionDTO optionDTO = new OptionDTO();
        optionDTO.setOptionId(options.getOptionId());
        optionDTO.setOptions(options.getOptions());

        return optionDTO;
    }

    public QuestionDTO convertEntityToQuestionDto(Question question) {
        QuestionDTO questionDTO = new QuestionDTO();
        questionDTO.setQuestionId(question.getQuestionId());
        questionDTO.setQuestionText(question.getQuestionText());
        questionDTO.setOptions(question.getOptions()
                .stream()
                .map(this::convertEntityToOptionDto)
                .collect(Collectors.toList()));

        return questionDTO;
    }

    public List<QuestionDTO> getAllQuestionOnSpecifiedQuiz(long quizId) {
        List<Question> question = questionRepository.findByQuizQuizId(quizId).orElseThrow(()-> new IllegalArgumentException("question not found"));
        return question
                .stream()
                .map(this::convertEntityToQuestionDto)
                .collect(Collectors.toList());
    }

    public QuestionDTO getQuestionByIdOnSpecifiedQuiz(long quizId, long questionId) {
        Question question = questionRepository.findByQuizQuizIdAndQuestionId(quizId, questionId).orElseThrow(()-> new IllegalArgumentException("question not found"));
        return convertEntityToQuestionDto(question);
    }

//    public Question
}
