SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC10301SS_2] (@EQUIPID int) AS  set nocount on SELECT TOP 1  BACHNUMB, LineNumber, USERID, EQUIPID, CUSTNMBR, ADRSCODE, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, DEX_ROW_ID FROM .SVC10301 WHERE EQUIPID = @EQUIPID ORDER BY EQUIPID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC10301SS_2] TO [DYNGRP]
GO
