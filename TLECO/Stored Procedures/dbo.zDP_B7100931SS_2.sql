SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100931SS_2] (@DEX_ROW_ID int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Or_Company_ID, ACTNUMST, INTERID, BSSI_DefAccountNumberStr, DOCAMNT, USERID, BSSI_ScheduleBasedOnDate, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_Frequency, BSSI_RecogAcctNumberStri, EXCHDATE, CURNCYID, BSSI_Recog_TemplateID, DEX_ROW_ID FROM .B7100931 WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100931SS_2] TO [DYNGRP]
GO
