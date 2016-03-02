SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7180109SI] (@USERID char(15), @JRNENTRY int, @SQNCLINE numeric(19,5), @BSSI_Deferrable tinyint, @BSSI_DeferralStartDate datetime, @BSSI_Recog_TemplateID char(25), @BSSI_Recog_Acct_Index int, @ACTINDX int, @REFRENCE char(31), @BSSI_ScheduleBasedOnDate tinyint, @BSSI_DeferralEndDate datetime, @BSSI_Recog_Frequency smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7180109 (USERID, JRNENTRY, SQNCLINE, BSSI_Deferrable, BSSI_DeferralStartDate, BSSI_Recog_TemplateID, BSSI_Recog_Acct_Index, ACTINDX, REFRENCE, BSSI_ScheduleBasedOnDate, BSSI_DeferralEndDate, BSSI_Recog_Frequency) VALUES ( @USERID, @JRNENTRY, @SQNCLINE, @BSSI_Deferrable, @BSSI_DeferralStartDate, @BSSI_Recog_TemplateID, @BSSI_Recog_Acct_Index, @ACTINDX, @REFRENCE, @BSSI_ScheduleBasedOnDate, @BSSI_DeferralEndDate, @BSSI_Recog_Frequency) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7180109SI] TO [DYNGRP]
GO
