SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40301F_2] (@DSCRIPTN_RS char(31), @JOBTITLE_RS char(7), @DSCRIPTN_RE char(31), @JOBTITLE_RE char(7)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  JOBTITLE, DSCRIPTN, EEOCLASS_I, FLSASTATUS, REPORTSTOPOS, REVIEWSETUPCODE_I, SKILLSETNUMBER_I, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, DEX_ROW_ID, TXTFIELD FROM .UPR40301 ORDER BY DSCRIPTN ASC, JOBTITLE ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  JOBTITLE, DSCRIPTN, EEOCLASS_I, FLSASTATUS, REPORTSTOPOS, REVIEWSETUPCODE_I, SKILLSETNUMBER_I, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, DEX_ROW_ID, TXTFIELD FROM .UPR40301 WHERE DSCRIPTN = @DSCRIPTN_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE ORDER BY DSCRIPTN ASC, JOBTITLE ASC END ELSE BEGIN SELECT TOP 25  JOBTITLE, DSCRIPTN, EEOCLASS_I, FLSASTATUS, REPORTSTOPOS, REVIEWSETUPCODE_I, SKILLSETNUMBER_I, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, DEX_ROW_ID, TXTFIELD FROM .UPR40301 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE ORDER BY DSCRIPTN ASC, JOBTITLE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40301F_2] TO [DYNGRP]
GO
