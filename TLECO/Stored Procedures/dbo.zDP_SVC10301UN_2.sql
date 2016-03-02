SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC10301UN_2] (@BS int, @EQUIPID int, @EQUIPID_RS int, @EQUIPID_RE int) AS  set nocount on IF @EQUIPID_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, LineNumber, USERID, EQUIPID, CUSTNMBR, ADRSCODE, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, DEX_ROW_ID FROM .SVC10301 WHERE ( EQUIPID > @EQUIPID ) ORDER BY EQUIPID ASC, DEX_ROW_ID ASC END ELSE IF @EQUIPID_RS = @EQUIPID_RE BEGIN SELECT TOP 25  BACHNUMB, LineNumber, USERID, EQUIPID, CUSTNMBR, ADRSCODE, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, DEX_ROW_ID FROM .SVC10301 WHERE EQUIPID = @EQUIPID_RS AND ( EQUIPID > @EQUIPID ) ORDER BY EQUIPID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, LineNumber, USERID, EQUIPID, CUSTNMBR, ADRSCODE, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, DEX_ROW_ID FROM .SVC10301 WHERE EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE AND ( EQUIPID > @EQUIPID ) ORDER BY EQUIPID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC10301UN_2] TO [DYNGRP]
GO
