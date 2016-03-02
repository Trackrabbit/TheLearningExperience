SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC8005L_1] (@SCHEDID_RS char(9), @SCHEDID_RE char(9)) AS  set nocount on IF @SCHEDID_RS IS NULL BEGIN SELECT TOP 25  SCHEDID, SCHEDDESC, SRVTYPE, UOMSCHDL, DEX_ROW_ID FROM .SVC8005 ORDER BY SCHEDID DESC END ELSE IF @SCHEDID_RS = @SCHEDID_RE BEGIN SELECT TOP 25  SCHEDID, SCHEDDESC, SRVTYPE, UOMSCHDL, DEX_ROW_ID FROM .SVC8005 WHERE SCHEDID = @SCHEDID_RS ORDER BY SCHEDID DESC END ELSE BEGIN SELECT TOP 25  SCHEDID, SCHEDDESC, SRVTYPE, UOMSCHDL, DEX_ROW_ID FROM .SVC8005 WHERE SCHEDID BETWEEN @SCHEDID_RS AND @SCHEDID_RE ORDER BY SCHEDID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC8005L_1] TO [DYNGRP]
GO