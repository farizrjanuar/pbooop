package com.elearning.wave.service;

import com.elearning.wave.dto.ModuleDTO;
import com.elearning.wave.model.base.Module;
import com.elearning.wave.model.base.EnrolledCourse;
import com.elearning.wave.repository.ModuleRepository;
import com.elearning.wave.repository.EnrolledCourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ModuleService {

    private final ModuleRepository moduleRepository;
    private final EnrolledCourseService enrolledCourseService;

    @Autowired
    public ModuleService(ModuleRepository moduleRepository, EnrolledCourseService enrolledCourseService) {
        this.moduleRepository = moduleRepository;
        this.enrolledCourseService = enrolledCourseService;
    }

    public ModuleDTO convertEntityToModuleDto(Module module) {
        ModuleDTO moduleDTO = new ModuleDTO();
        moduleDTO.setModuleId(module.getModuleId());
        moduleDTO.setTitle(module.getTitle());
        moduleDTO.setContent(module.getContent());
        moduleDTO.setDescription(module.getDescription());

        return moduleDTO;
    }

    public ModuleDTO getModuleByIdOnSpecifiedCourse(long userId, long courseId, long moduleId) {
        // Mencari EnrolledCourse berdasarkan userId dan courseId
        EnrolledCourse enrolledCourse = enrolledCourseService.getEnrollCourseByCourseAndUser(userId, courseId);

        // Mencari module berdasarkan courseId dan moduleId
        Module module = moduleRepository
                .findByCourseCourseIdAndModuleId(courseId, moduleId)
                .orElseThrow(() -> new IllegalArgumentException("Module not found"));

        // Mengecek apakah user sudah mengakses modul tersebut
        if (enrolledCourse.hasAccessedModule(moduleId)) {
            // Modul sudah diakses sebelumnya, langsung kembalikan data modul
            return convertEntityToModuleDto(module);
        }

        // Mengecek apakah user memiliki poin yang cukup
        if (enrolledCourse.getTotalPointEarned() < Module.getPointRequired()) {
            throw new IllegalStateException("Not enough points to access this module");
        }

        // Mengurangi poin setelah pertama kali mengakses
        enrolledCourse.setTotalPointEarned(enrolledCourse.getTotalPointEarned() - Module.getPointRequired());
        enrolledCourse.grantAccessToModule(moduleId);  // Menandai modul ini telah diakses
        enrolledCourseService.saveUpdate(enrolledCourse);

        return convertEntityToModuleDto(module);
    }

    public List<ModuleDTO> getModulesOnSpecifiedCourse(long courseId) {
        List<Module> module = moduleRepository
                .findByCourseCourseId(courseId)
                .orElseThrow(()->new IllegalArgumentException("module not found"));
        return module
                .stream()
                .map(this::convertEntityToModuleDto)
                .collect(Collectors.toList());
    }
}
