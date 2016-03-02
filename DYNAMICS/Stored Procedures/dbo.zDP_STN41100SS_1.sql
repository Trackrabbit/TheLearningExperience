SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_STN41100SS_1] (@Machine_ID char(15), @PRNCODE char(15)) AS  set nocount on SELECT TOP 1  Machine_ID, PRNMODE, USERID, CMPANYID, PRNCODE, PRNTDESC, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, PRNSET FROM .STN41100 WHERE Machine_ID = @Machine_ID AND PRNCODE = @PRNCODE ORDER BY Machine_ID ASC, PRNCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_STN41100SS_1] TO [DYNGRP]
GO
