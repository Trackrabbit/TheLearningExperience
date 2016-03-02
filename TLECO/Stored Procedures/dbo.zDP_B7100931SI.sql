SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100931SI] (@BSSI_Or_Company_ID char(5), @ACTNUMST char(129), @INTERID char(5), @BSSI_DefAccountNumberStr char(129), @DOCAMNT numeric(19,5), @USERID char(15), @BSSI_ScheduleBasedOnDate tinyint, @BSSI_DeferralStartDate datetime, @BSSI_DeferralEndDate datetime, @BSSI_Recog_Frequency smallint, @BSSI_RecogAcctNumberStri char(129), @EXCHDATE datetime, @CURNCYID char(15), @BSSI_Recog_TemplateID char(25), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100931 (BSSI_Or_Company_ID, ACTNUMST, INTERID, BSSI_DefAccountNumberStr, DOCAMNT, USERID, BSSI_ScheduleBasedOnDate, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_Frequency, BSSI_RecogAcctNumberStri, EXCHDATE, CURNCYID, BSSI_Recog_TemplateID) VALUES ( @BSSI_Or_Company_ID, @ACTNUMST, @INTERID, @BSSI_DefAccountNumberStr, @DOCAMNT, @USERID, @BSSI_ScheduleBasedOnDate, @BSSI_DeferralStartDate, @BSSI_DeferralEndDate, @BSSI_Recog_Frequency, @BSSI_RecogAcctNumberStri, @EXCHDATE, @CURNCYID, @BSSI_Recog_TemplateID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100931SI] TO [DYNGRP]
GO
