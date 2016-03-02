SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Check_Equip_On_Config] (  @Config char(21),  @EquipID integer )  As  declare @NumberOfRecord integer if @EquipID = 0 return(0) if @Config > ''   BEGIN  select @NumberOfRecord = COUNT(*) from SVC00401 where CONFGREF = @Config and EQUIPID = @EquipID  END else  BEGIN  select @NumberOfRecord = COUNT(*) FROM SVC00401 WHERE EQUIPID = @EquipID  END  return @NumberOfRecord    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Equip_On_Config] TO [DYNGRP]
GO
