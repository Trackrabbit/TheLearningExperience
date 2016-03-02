SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY09200SS_1] (@SECMODALTID char(25)) AS  set nocount on SELECT TOP 1  SECMODALTID, SECMODALTDESC, CRUSRID, CREATDDT, MDFUSRID, MODIFDT, DEX_ROW_ID FROM .SY09200 WHERE SECMODALTID = @SECMODALTID ORDER BY SECMODALTID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY09200SS_1] TO [DYNGRP]
GO
