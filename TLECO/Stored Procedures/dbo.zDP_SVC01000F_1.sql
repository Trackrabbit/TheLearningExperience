SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC01000F_1] (@ITEMNMBR_RS char(31), @SCHEDID_RS char(9), @ITEMNMBR_RE char(31), @SCHEDID_RE char(9)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, ACTIVE, SCHEDID, DEX_ROW_ID FROM .SVC01000 ORDER BY ITEMNMBR ASC, SCHEDID ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, ACTIVE, SCHEDID, DEX_ROW_ID FROM .SVC01000 WHERE ITEMNMBR = @ITEMNMBR_RS AND SCHEDID BETWEEN @SCHEDID_RS AND @SCHEDID_RE ORDER BY ITEMNMBR ASC, SCHEDID ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, ACTIVE, SCHEDID, DEX_ROW_ID FROM .SVC01000 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SCHEDID BETWEEN @SCHEDID_RS AND @SCHEDID_RE ORDER BY ITEMNMBR ASC, SCHEDID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC01000F_1] TO [DYNGRP]
GO
