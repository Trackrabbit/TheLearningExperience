SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA00200SS_1] (@GROUPID char(15), @CODEID char(15)) AS  set nocount on SELECT TOP 1  GROUPID, CODEID, CODEDESC, DEX_ROW_ID FROM .DTA00200 WHERE GROUPID = @GROUPID AND CODEID = @CODEID ORDER BY GROUPID ASC, CODEID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA00200SS_1] TO [DYNGRP]
GO
