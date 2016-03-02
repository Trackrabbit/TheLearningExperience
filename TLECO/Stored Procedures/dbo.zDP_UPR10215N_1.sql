SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10215N_1] (@BS int, @USERID char(15), @PYRNTYPE smallint, @EMPLOYID char(15), @PYADNMBR int, @USERID_RS char(15), @PYRNTYPE_RS smallint, @EMPLOYID_RS char(15), @PYADNMBR_RS int, @USERID_RE char(15), @PYRNTYPE_RE smallint, @EMPLOYID_RE char(15), @PYADNMBR_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, PYRNTYPE, EMPLOYID, PYADNMBR, RSNCHKVD, DEX_ROW_ID FROM .UPR10215 WHERE ( USERID = @USERID AND PYRNTYPE = @PYRNTYPE AND EMPLOYID = @EMPLOYID AND PYADNMBR > @PYADNMBR OR USERID = @USERID AND PYRNTYPE = @PYRNTYPE AND EMPLOYID > @EMPLOYID OR USERID = @USERID AND PYRNTYPE > @PYRNTYPE OR USERID > @USERID ) ORDER BY USERID ASC, PYRNTYPE ASC, EMPLOYID ASC, PYADNMBR ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, PYRNTYPE, EMPLOYID, PYADNMBR, RSNCHKVD, DEX_ROW_ID FROM .UPR10215 WHERE USERID = @USERID_RS AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PYADNMBR BETWEEN @PYADNMBR_RS AND @PYADNMBR_RE AND ( USERID = @USERID AND PYRNTYPE = @PYRNTYPE AND EMPLOYID = @EMPLOYID AND PYADNMBR > @PYADNMBR OR USERID = @USERID AND PYRNTYPE = @PYRNTYPE AND EMPLOYID > @EMPLOYID OR USERID = @USERID AND PYRNTYPE > @PYRNTYPE OR USERID > @USERID ) ORDER BY USERID ASC, PYRNTYPE ASC, EMPLOYID ASC, PYADNMBR ASC END ELSE BEGIN SELECT TOP 25  USERID, PYRNTYPE, EMPLOYID, PYADNMBR, RSNCHKVD, DEX_ROW_ID FROM .UPR10215 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PYADNMBR BETWEEN @PYADNMBR_RS AND @PYADNMBR_RE AND ( USERID = @USERID AND PYRNTYPE = @PYRNTYPE AND EMPLOYID = @EMPLOYID AND PYADNMBR > @PYADNMBR OR USERID = @USERID AND PYRNTYPE = @PYRNTYPE AND EMPLOYID > @EMPLOYID OR USERID = @USERID AND PYRNTYPE > @PYRNTYPE OR USERID > @USERID ) ORDER BY USERID ASC, PYRNTYPE ASC, EMPLOYID ASC, PYADNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10215N_1] TO [DYNGRP]
GO
