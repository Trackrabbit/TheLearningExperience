SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07510F_2] (@TECHID_RS char(11), @STRTDATE_RS datetime, @TECHID_RE char(11), @STRTDATE_RE datetime) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  TECHID, SVC_Form_ID, STRTDATE, ENDDATE, SOCSCNUM, SVC_Expense_Purpose, DEX_ROW_ID, TXTFIELD FROM .SVC07510 ORDER BY TECHID ASC, STRTDATE ASC, DEX_ROW_ID ASC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  TECHID, SVC_Form_ID, STRTDATE, ENDDATE, SOCSCNUM, SVC_Expense_Purpose, DEX_ROW_ID, TXTFIELD FROM .SVC07510 WHERE TECHID = @TECHID_RS AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY TECHID ASC, STRTDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TECHID, SVC_Form_ID, STRTDATE, ENDDATE, SOCSCNUM, SVC_Expense_Purpose, DEX_ROW_ID, TXTFIELD FROM .SVC07510 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY TECHID ASC, STRTDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07510F_2] TO [DYNGRP]
GO
