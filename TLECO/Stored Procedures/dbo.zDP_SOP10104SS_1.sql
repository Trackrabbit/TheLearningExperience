SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10104SS_1] (@SOPTYPE smallint, @SOPNUMBE char(21), @PRCHLDID char(15)) AS  set nocount on SELECT TOP 1  SOPTYPE, SOPNUMBE, PRCHLDID, DELETE1, USERID, HOLDDATE, TIME1, TRXSORCE, DEX_ROW_ID FROM .SOP10104 WHERE SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND PRCHLDID = @PRCHLDID ORDER BY SOPTYPE ASC, SOPNUMBE ASC, PRCHLDID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10104SS_1] TO [DYNGRP]
GO
