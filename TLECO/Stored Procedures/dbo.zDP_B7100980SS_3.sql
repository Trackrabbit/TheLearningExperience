SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100980SS_3] (@JRNENTRY int, @ACTINDX int, @ORDOCAMT numeric(19,5), @INTERID char(5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  JRNENTRY, SQNCLINE, INTERID, ACTINDX, DOCAMNT, ORDOCAMT, BSSI_ScheduleBasedOnDate, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_Frequency, BSSI_RecogAcctNumberStri, EXCHDATE, BSSI_Recog_TemplateID, DEX_ROW_ID FROM .B7100980 WHERE JRNENTRY = @JRNENTRY AND ACTINDX = @ACTINDX AND ORDOCAMT = @ORDOCAMT AND INTERID = @INTERID ORDER BY JRNENTRY ASC, ACTINDX ASC, ORDOCAMT ASC, INTERID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100980SS_3] TO [DYNGRP]
GO