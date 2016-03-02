SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00221N_1] (@BS int, @EMPLOYID char(15), @SEQNUMBR int, @DayOfWeek smallint, @EMPLOYID_RS char(15), @SEQNUMBR_RS int, @DayOfWeek_RS smallint, @EMPLOYID_RE char(15), @SEQNUMBR_RE int, @DayOfWeek_RE smallint) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, DayOfWeek, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SHFTCODE, DAYSWRDK, WKSWRKD, DEX_ROW_ID, CMMTTEXT FROM .UPR00221 WHERE ( EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR AND DayOfWeek > @DayOfWeek OR EMPLOYID = @EMPLOYID AND SEQNUMBR > @SEQNUMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, SEQNUMBR ASC, DayOfWeek ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, DayOfWeek, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SHFTCODE, DAYSWRDK, WKSWRKD, DEX_ROW_ID, CMMTTEXT FROM .UPR00221 WHERE EMPLOYID = @EMPLOYID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND DayOfWeek BETWEEN @DayOfWeek_RS AND @DayOfWeek_RE AND ( EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR AND DayOfWeek > @DayOfWeek OR EMPLOYID = @EMPLOYID AND SEQNUMBR > @SEQNUMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, SEQNUMBR ASC, DayOfWeek ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, DayOfWeek, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SHFTCODE, DAYSWRDK, WKSWRKD, DEX_ROW_ID, CMMTTEXT FROM .UPR00221 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND DayOfWeek BETWEEN @DayOfWeek_RS AND @DayOfWeek_RE AND ( EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR AND DayOfWeek > @DayOfWeek OR EMPLOYID = @EMPLOYID AND SEQNUMBR > @SEQNUMBR OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, SEQNUMBR ASC, DayOfWeek ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00221N_1] TO [DYNGRP]
GO
