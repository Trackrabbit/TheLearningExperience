SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42401SI] (@Restriction_Code char(15), @Restriction_Type smallint, @Per_Day_CB tinyint, @Per_Pay_Period_CB tinyint, @Required_StartStop_CB tinyint, @Department_CB tinyint, @Position_CB tinyint, @State_Tax_CB tinyint, @Local_Tax_CB tinyint, @Shift_CB tinyint, @Days_Worked_CB tinyint, @Weeks_Worked_CB tinyint, @Notes_CB tinyint, @Require_Electronic_Signa tinyint, @Per_Day_Max smallint, @Per_Period_Min smallint, @Per_Period_Max smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR42401 (Restriction_Code, Restriction_Type, Per_Day_CB, Per_Pay_Period_CB, Required_StartStop_CB, Department_CB, Position_CB, State_Tax_CB, Local_Tax_CB, Shift_CB, Days_Worked_CB, Weeks_Worked_CB, Notes_CB, Require_Electronic_Signa, Per_Day_Max, Per_Period_Min, Per_Period_Max) VALUES ( @Restriction_Code, @Restriction_Type, @Per_Day_CB, @Per_Pay_Period_CB, @Required_StartStop_CB, @Department_CB, @Position_CB, @State_Tax_CB, @Local_Tax_CB, @Shift_CB, @Days_Worked_CB, @Weeks_Worked_CB, @Notes_CB, @Require_Electronic_Signa, @Per_Day_Max, @Per_Period_Min, @Per_Period_Max) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42401SI] TO [DYNGRP]
GO
