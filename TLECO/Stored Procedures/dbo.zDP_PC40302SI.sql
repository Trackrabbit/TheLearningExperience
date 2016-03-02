SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40302SI] (@PLANCODE char(15), @JOBTITLE char(7), @PayCode char(7), @Base_Step_Increased_On smallint, @BUDGETED tinyint, @DEFPERMOPTION smallint, @PAYRTAMT numeric(19,5), @PYSTPTBLID char(15), @PRIMARYPOSSEAT tinyint, @Step smallint, @Step_Effective_Date datetime, @DEFTEMPOPTION smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PC40302 (PLANCODE, JOBTITLE, PayCode, Base_Step_Increased_On, BUDGETED, DEFPERMOPTION, PAYRTAMT, PYSTPTBLID, PRIMARYPOSSEAT, Step, Step_Effective_Date, DEFTEMPOPTION) VALUES ( @PLANCODE, @JOBTITLE, @PayCode, @Base_Step_Increased_On, @BUDGETED, @DEFPERMOPTION, @PAYRTAMT, @PYSTPTBLID, @PRIMARYPOSSEAT, @Step, @Step_Effective_Date, @DEFTEMPOPTION) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40302SI] TO [DYNGRP]
GO
