SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF40202SS_1] (@REPORTID smallint) AS  set nocount on SELECT TOP 1  USERID, REPORTID, DEX_ROW_ID FROM .AF40202 WHERE REPORTID = @REPORTID ORDER BY REPORTID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40202SS_1] TO [DYNGRP]
GO
