package com.aktv.project.giangdien.backoffice.dto.page;

import com.aktv.project.giangdien.backoffice.dto.EventDto;
import com.aktv.project.giangdien.backoffice.dto.InternationalizationDto;
import com.aktv.project.giangdien.backoffice.dto.BusinessDto;
import lombok.Data;

import java.util.List;

@Data
public class HomePageDto {

    private List<InternationalizationDto> basicInfos;
    private EventDto event;
    private List<BusinessDto> businesses;

    public HomePageDto (List<InternationalizationDto> basicInfos) {
        this.basicInfos = basicInfos;
    }
}
