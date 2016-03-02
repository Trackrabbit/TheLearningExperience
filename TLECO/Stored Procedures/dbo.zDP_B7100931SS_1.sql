SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100931SS_1] (@BSSI_Or_Company_ID char(5), @CURNCYID char(15), @INTERID char(5), @ACTNUMST char(129), @USERID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Or_Company_ID, ACTNUMST, INTERID, BSSI_DefAccountNumberStr, DOCAMNT, USERID, BSSI_ScheduleBasedOnDate, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_Frequency, BSSI_RecogAcctNumberStri, EXCHDATE, CURNCYID, BSSI_Recog_TemplateID, DEX_ROW_ID FROM .B7100931 WHERE BSSI_Or_Company_ID = @BSSI_Or_Company_ID AND CURNCYID = @CURNCYID AND INTERID = @INTERID AND ACTNUMST = @ACTNUMST AND USERID = @USERID ORDER BY BSSI_Or_Company_ID ASC, CURNCYID ASC, INTERID ASC, ACTNUMST ASC, USERID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100931SS_1] TO [DYNGRP]
GO
