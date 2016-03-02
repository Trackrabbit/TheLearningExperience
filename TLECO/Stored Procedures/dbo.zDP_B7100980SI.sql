SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100980SI] (@JRNENTRY int, @SQNCLINE numeric(19,5), @INTERID char(5), @ACTINDX int, @DOCAMNT numeric(19,5), @ORDOCAMT numeric(19,5), @BSSI_ScheduleBasedOnDate tinyint, @BSSI_DeferralStartDate datetime, @BSSI_DeferralEndDate datetime, @BSSI_Recog_Frequency smallint, @BSSI_RecogAcctNumberStri char(129), @EXCHDATE datetime, @BSSI_Recog_TemplateID char(25), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100980 (JRNENTRY, SQNCLINE, INTERID, ACTINDX, DOCAMNT, ORDOCAMT, BSSI_ScheduleBasedOnDate, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_Frequency, BSSI_RecogAcctNumberStri, EXCHDATE, BSSI_Recog_TemplateID) VALUES ( @JRNENTRY, @SQNCLINE, @INTERID, @ACTINDX, @DOCAMNT, @ORDOCAMT, @BSSI_ScheduleBasedOnDate, @BSSI_DeferralStartDate, @BSSI_DeferralEndDate, @BSSI_Recog_Frequency, @BSSI_RecogAcctNumberStri, @EXCHDATE, @BSSI_Recog_TemplateID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100980SI] TO [DYNGRP]
GO
