SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10112SS_1] (@SOPNUMBE char(21), @SOPTYPE smallint, @ORD int) AS  set nocount on SELECT TOP 1  SOPNUMBE, SOPTYPE, ORD, Effective_Date, TIME1, SOPSTATUS, USERID, DEX_ROW_ID FROM .SOP10112 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND ORD = @ORD ORDER BY SOPNUMBE ASC, SOPTYPE ASC, ORD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10112SS_1] TO [DYNGRP]
GO
