SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY05200N_1] (@BS int, @DICTID smallint, @RESTYPE smallint, @RESID smallint, @DICTID_RS smallint, @RESTYPE_RS smallint, @RESID_RS smallint, @DICTID_RE smallint, @RESTYPE_RE smallint, @RESID_RE smallint) AS  set nocount on IF @DICTID_RS IS NULL BEGIN SELECT TOP 25  DICTID, RESTYPE, RESID, RESTECHNAME, ExcludeFrom_1, ExcludeFrom_2, ExcludeFrom_3, ExcludeFrom_4, ExcludeFrom_5, DEX_ROW_ID FROM .SY05200 WHERE ( DICTID = @DICTID AND RESTYPE = @RESTYPE AND RESID > @RESID OR DICTID = @DICTID AND RESTYPE > @RESTYPE OR DICTID > @DICTID ) ORDER BY DICTID ASC, RESTYPE ASC, RESID ASC END ELSE IF @DICTID_RS = @DICTID_RE BEGIN SELECT TOP 25  DICTID, RESTYPE, RESID, RESTECHNAME, ExcludeFrom_1, ExcludeFrom_2, ExcludeFrom_3, ExcludeFrom_4, ExcludeFrom_5, DEX_ROW_ID FROM .SY05200 WHERE DICTID = @DICTID_RS AND RESTYPE BETWEEN @RESTYPE_RS AND @RESTYPE_RE AND RESID BETWEEN @RESID_RS AND @RESID_RE AND ( DICTID = @DICTID AND RESTYPE = @RESTYPE AND RESID > @RESID OR DICTID = @DICTID AND RESTYPE > @RESTYPE OR DICTID > @DICTID ) ORDER BY DICTID ASC, RESTYPE ASC, RESID ASC END ELSE BEGIN SELECT TOP 25  DICTID, RESTYPE, RESID, RESTECHNAME, ExcludeFrom_1, ExcludeFrom_2, ExcludeFrom_3, ExcludeFrom_4, ExcludeFrom_5, DEX_ROW_ID FROM .SY05200 WHERE DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND RESTYPE BETWEEN @RESTYPE_RS AND @RESTYPE_RE AND RESID BETWEEN @RESID_RS AND @RESID_RE AND ( DICTID = @DICTID AND RESTYPE = @RESTYPE AND RESID > @RESID OR DICTID = @DICTID AND RESTYPE > @RESTYPE OR DICTID > @DICTID ) ORDER BY DICTID ASC, RESTYPE ASC, RESID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY05200N_1] TO [DYNGRP]
GO