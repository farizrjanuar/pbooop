package com.elearning.wave.model.base;

import jakarta.persistence.*;

@MappedSuperclass
public abstract class BaseModulesEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "module_id")
    private Long moduleId;

    public Long getModuleId() {
        return moduleId;
    }

    public void setModuleId(Long moduleId) {
        this.moduleId = moduleId;
    }

    public abstract void displayModuleInfo();
}
