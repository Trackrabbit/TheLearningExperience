SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7380105SI] (@JRNENTRY int, @SQNCLINE numeric(19,5), @BSSI_Deferrable tinyint, @BSSI_DeferralStartDate datetime, @BSSI_Recog_TemplateID char(25), @BSSI_Recog_Acct_Index int, @BSSI_ScheduleBasedOnDate tinyint, @BSSI_Recog_Frequency smallint, @BSSI_DeferralEndDate datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7380105 (JRNENTRY, SQNCLINE, BSSI_Deferrable, BSSI_DeferralStartDate, BSSI_Recog_TemplateID, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_DeferralEndDate) VALUES ( @JRNENTRY, @SQNCLINE, @BSSI_Deferrable, @BSSI_DeferralStartDate, @BSSI_Recog_TemplateID, @BSSI_Recog_Acct_Index, @BSSI_ScheduleBasedOnDate, @BSSI_Recog_Frequency, @BSSI_DeferralEndDate) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7380105SI] TO [DYNGRP]
GO
