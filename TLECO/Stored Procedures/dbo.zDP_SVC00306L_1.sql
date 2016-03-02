SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00306L_1] (@EQUIPID_RS int, @ECO_Number_RS char(15), @EQUIPID_RE int, @ECO_Number_RE char(15)) AS  set nocount on IF @EQUIPID_RS IS NULL BEGIN SELECT TOP 25  EQUIPID, ECO_Number, DATE1, SRVRECTYPE, CALLNBR, DEX_ROW_ID FROM .SVC00306 ORDER BY EQUIPID DESC, ECO_Number DESC END ELSE IF @EQUIPID_RS = @EQUIPID_RE BEGIN SELECT TOP 25  EQUIPID, ECO_Number, DATE1, SRVRECTYPE, CALLNBR, DEX_ROW_ID FROM .SVC00306 WHERE EQUIPID = @EQUIPID_RS AND ECO_Number BETWEEN @ECO_Number_RS AND @ECO_Number_RE ORDER BY EQUIPID DESC, ECO_Number DESC END ELSE BEGIN SELECT TOP 25  EQUIPID, ECO_Number, DATE1, SRVRECTYPE, CALLNBR, DEX_ROW_ID FROM .SVC00306 WHERE EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE AND ECO_Number BETWEEN @ECO_Number_RS AND @ECO_Number_RE ORDER BY EQUIPID DESC, ECO_Number DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00306L_1] TO [DYNGRP]
GO
