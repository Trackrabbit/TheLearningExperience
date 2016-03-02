SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40801SI] (@PLANCODE char(15), @JOBTITLE char(7), @SEAT int, @SEQNUMBR int, @PayCode char(7), @Base_Step_Increased_On smallint, @PayCodeCB tinyint, @PAYRTAMT numeric(19,5), @PYSTPTBLID char(15), @Step smallint, @Step_Effective_Date datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PC40801 (PLANCODE, JOBTITLE, SEAT, SEQNUMBR, PayCode, Base_Step_Increased_On, PayCodeCB, PAYRTAMT, PYSTPTBLID, Step, Step_Effective_Date) VALUES ( @PLANCODE, @JOBTITLE, @SEAT, @SEQNUMBR, @PayCode, @Base_Step_Increased_On, @PayCodeCB, @PAYRTAMT, @PYSTPTBLID, @Step, @Step_Effective_Date) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40801SI] TO [DYNGRP]
GO
