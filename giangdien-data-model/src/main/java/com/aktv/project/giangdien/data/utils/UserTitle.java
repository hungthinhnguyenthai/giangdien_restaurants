package com.aktv.project.giangdien.data.utils;

import com.aktv.project.giangdien.data.specification.RG;
import com.aktv.project.giangdien.data.specification.RGConstants;
import lombok.Data;

/**
 * Created by el-hadani on 27/07/15.
 */
@Data
public class UserTitle {
  /**
   * Civilité de l'utilisateur, peut etre null
   */
  @RG.RGs({
    @RG(RGConstants.CP_V1_RG5),
    @RG(RGConstants.CLP_V1_RG6)
  })
  private String title;

}
