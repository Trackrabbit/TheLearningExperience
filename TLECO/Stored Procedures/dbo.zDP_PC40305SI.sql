SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40305SI] (@PLANCODE char(15), @JOBTITLE char(7), @TEMPSEAT tinyint, @SEAT int, @SEQNUMBR int, @EMPLOYID char(15), @STRTDATE datetime, @ENDDATE datetime, @ASSIGNMENTSTATUS smallint, @PRIMARYPOSSEAT tinyint, @EXPIREDCB tinyint, @INHERITSTATUS smallint, @Base_Step_Increased_On smallint, @PYSTPTBLID char(15), @Step smallint, @Step_Effective_Date datetime, @PAYRATEBASEDON smallint, @PAYRATE numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PC40305 (PLANCODE, JOBTITLE, TEMPSEAT, SEAT, SEQNUMBR, EMPLOYID, STRTDATE, ENDDATE, ASSIGNMENTSTATUS, PRIMARYPOSSEAT, EXPIREDCB, INHERITSTATUS, Base_Step_Increased_On, PYSTPTBLID, Step, Step_Effective_Date, PAYRATEBASEDON, PAYRATE) VALUES ( @PLANCODE, @JOBTITLE, @TEMPSEAT, @SEAT, @SEQNUMBR, @EMPLOYID, @STRTDATE, @ENDDATE, @ASSIGNMENTSTATUS, @PRIMARYPOSSEAT, @EXPIREDCB, @INHERITSTATUS, @Base_Step_Increased_On, @PYSTPTBLID, @Step, @Step_Effective_Date, @PAYRATEBASEDON, @PAYRATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40305SI] TO [DYNGRP]
GO