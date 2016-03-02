SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00220SI] (@EMPLOYID char(15), @SEQNUMBR int, @PayCode char(7), @Daily_Hours_1 numeric(19,5), @Daily_Hours_2 numeric(19,5), @Daily_Hours_3 numeric(19,5), @Daily_Hours_4 numeric(19,5), @Daily_Hours_5 numeric(19,5), @Daily_Hours_6 numeric(19,5), @Daily_Hours_7 numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR00220 (EMPLOYID, SEQNUMBR, PayCode, Daily_Hours_1, Daily_Hours_2, Daily_Hours_3, Daily_Hours_4, Daily_Hours_5, Daily_Hours_6, Daily_Hours_7) VALUES ( @EMPLOYID, @SEQNUMBR, @PayCode, @Daily_Hours_1, @Daily_Hours_2, @Daily_Hours_3, @Daily_Hours_4, @Daily_Hours_5, @Daily_Hours_6, @Daily_Hours_7) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00220SI] TO [DYNGRP]
GO
