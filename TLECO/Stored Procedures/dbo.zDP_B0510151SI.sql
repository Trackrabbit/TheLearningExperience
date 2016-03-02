SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510151SI] (@IMS_Type_of_Distribution smallint, @MJW_Distribution_Type char(21), @MJW_Distribution_Type_De char(51), @BSSI_AP_Account_Index int, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510151 (IMS_Type_of_Distribution, MJW_Distribution_Type, MJW_Distribution_Type_De, BSSI_AP_Account_Index, NOTEINDX) VALUES ( @IMS_Type_of_Distribution, @MJW_Distribution_Type, @MJW_Distribution_Type_De, @BSSI_AP_Account_Index, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510151SI] TO [DYNGRP]
GO
