SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPS0401SI] (@PYSTPTBLID char(15), @Effective_Date datetime, @Step smallint, @Months_In_Step_Start smallint, @Months_In_Step_End smallint, @PAYRTAMT numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRPS0401 (PYSTPTBLID, Effective_Date, Step, Months_In_Step_Start, Months_In_Step_End, PAYRTAMT) VALUES ( @PYSTPTBLID, @Effective_Date, @Step, @Months_In_Step_Start, @Months_In_Step_End, @PAYRTAMT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPS0401SI] TO [DYNGRP]
GO
