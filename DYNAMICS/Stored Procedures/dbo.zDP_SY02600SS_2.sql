SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY02600SS_2] (@DATE1 datetime, @TIME1 datetime) AS  set nocount on SELECT TOP 1  USERID, DATE1, TIME1, USRNTFLG, DEX_ROW_ID, TXTFIELD FROM .SY02600 WHERE DATE1 = @DATE1 AND TIME1 = @TIME1 ORDER BY DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02600SS_2] TO [DYNGRP]
GO