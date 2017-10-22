package com.repair.car.model;

import javax.validation.constraints.NotNull;

public class SearchForm {
    @NotNull
    private String afm;
    private String email;

    public String getAfm() {
        return afm;
    }

    public void setAfm(String afm) {
        this.afm = afm;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
