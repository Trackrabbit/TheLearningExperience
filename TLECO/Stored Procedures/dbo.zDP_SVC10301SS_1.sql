SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC10301SS_1] (@BACHNUMB char(15), @LineNumber smallint) AS  set nocount on SELECT TOP 1  BACHNUMB, LineNumber, USERID, EQUIPID, CUSTNMBR, ADRSCODE, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, DEX_ROW_ID FROM .SVC10301 WHERE BACHNUMB = @BACHNUMB AND LineNumber = @LineNumber ORDER BY BACHNUMB ASC, LineNumber ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC10301SS_1] TO [DYNGRP]
GO