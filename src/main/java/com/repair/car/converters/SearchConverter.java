package com.repair.car.converters;

import com.repair.car.model.SearchForm;
import com.repair.car.domain.User;

public class SearchConverter {
    public static User convert(SearchForm searchForm) {
        User user = new User();
        user.setAfm(searchForm.getAfm());
        user.setEmail(searchForm.getEmail());
        return user;
    }
}
