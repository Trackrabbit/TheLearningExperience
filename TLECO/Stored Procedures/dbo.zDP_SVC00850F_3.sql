SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00850F_3] (@ITEMNMBR_RS char(31), @ECO_Number_RS char(15), @ITEMNMBR_RE char(31), @ECO_Number_RE char(15)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ECO_Number, DSCRIPTN, DATE1, NOTEINDX, ITEMNMBR, From_Serial_Number, To_Serial_Number, Mandatory, SRVTYPE, TECHID, DEX_ROW_ID FROM .SVC00850 ORDER BY ITEMNMBR ASC, ECO_Number ASC, DEX_ROW_ID ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ECO_Number, DSCRIPTN, DATE1, NOTEINDX, ITEMNMBR, From_Serial_Number, To_Serial_Number, Mandatory, SRVTYPE, TECHID, DEX_ROW_ID FROM .SVC00850 WHERE ITEMNMBR = @ITEMNMBR_RS AND ECO_Number BETWEEN @ECO_Number_RS AND @ECO_Number_RE ORDER BY ITEMNMBR ASC, ECO_Number ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ECO_Number, DSCRIPTN, DATE1, NOTEINDX, ITEMNMBR, From_Serial_Number, To_Serial_Number, Mandatory, SRVTYPE, TECHID, DEX_ROW_ID FROM .SVC00850 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ECO_Number BETWEEN @ECO_Number_RS AND @ECO_Number_RE ORDER BY ITEMNMBR ASC, ECO_Number ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00850F_3] TO [DYNGRP]
GO