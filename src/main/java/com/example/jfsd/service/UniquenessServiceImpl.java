package com.example.jfsd.service;




import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.example.jfsd.model.Section;



@Service
public class UniquenessServiceImpl implements UniquenessService {

    @Override
    public List<Section> getIndiaDetails() {
        return Arrays.asList(
            new Section("Introduction to India",
                "India is a land of wonders and diversity. Known for its unity in diversity, it is home to vibrant cultures, ancient traditions, and breathtaking landscapes.",
                "https://placeholder.introduction.img"),
            new Section("History",
                "India's history dates back thousands of years and is marked by the rise of great civilizations like the Indus Valley Civilization and the Mughal Empire.",
                "https://placeholder.history.img"),
            new Section("Food Cuisines",
                "Indian cuisine is a rich tapestry of flavors and spices, with each region offering its own unique delicacies.",
                "https://placeholder.food.img"),
            new Section("Culture",
                "India’s culture is one of the richest and oldest in the world, encompassing art, festivals, music, and spirituality.",
                "https://placeholder.culture.img")
        );
    }
}
