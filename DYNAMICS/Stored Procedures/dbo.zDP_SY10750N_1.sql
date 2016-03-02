SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10750N_1] (@BS int, @SECDICTID smallint, @SECURITYTASKID char(25), @DICTID smallint, @SECRESTYPE smallint, @SECURITYID int, @SECDICTID_RS smallint, @SECURITYTASKID_RS char(25), @DICTID_RS smallint, @SECRESTYPE_RS smallint, @SECURITYID_RS int, @SECDICTID_RE smallint, @SECURITYTASKID_RE char(25), @DICTID_RE smallint, @SECRESTYPE_RE smallint, @SECURITYID_RE int) AS  set nocount on IF @SECDICTID_RS IS NULL BEGIN SELECT TOP 25  SECDICTID, SECURITYTASKID, DICTID, SECRESTYPE, SECURITYID, DEX_ROW_ID FROM .SY10750 WHERE ( SECDICTID = @SECDICTID AND SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECRESTYPE = @SECRESTYPE AND SECURITYID > @SECURITYID OR SECDICTID = @SECDICTID AND SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECRESTYPE > @SECRESTYPE OR SECDICTID = @SECDICTID AND SECURITYTASKID = @SECURITYTASKID AND DICTID > @DICTID OR SECDICTID = @SECDICTID AND SECURITYTASKID > @SECURITYTASKID OR SECDICTID > @SECDICTID ) ORDER BY SECDICTID ASC, SECURITYTASKID ASC, DICTID ASC, SECRESTYPE ASC, SECURITYID ASC END ELSE IF @SECDICTID_RS = @SECDICTID_RE BEGIN SELECT TOP 25  SECDICTID, SECURITYTASKID, DICTID, SECRESTYPE, SECURITYID, DEX_ROW_ID FROM .SY10750 WHERE SECDICTID = @SECDICTID_RS AND SECURITYTASKID BETWEEN @SECURITYTASKID_RS AND @SECURITYTASKID_RE AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND SECRESTYPE BETWEEN @SECRESTYPE_RS AND @SECRESTYPE_RE AND SECURITYID BETWEEN @SECURITYID_RS AND @SECURITYID_RE AND ( SECDICTID = @SECDICTID AND SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECRESTYPE = @SECRESTYPE AND SECURITYID > @SECURITYID OR SECDICTID = @SECDICTID AND SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECRESTYPE > @SECRESTYPE OR SECDICTID = @SECDICTID AND SECURITYTASKID = @SECURITYTASKID AND DICTID > @DICTID OR SECDICTID = @SECDICTID AND SECURITYTASKID > @SECURITYTASKID OR SECDICTID > @SECDICTID ) ORDER BY SECDICTID ASC, SECURITYTASKID ASC, DICTID ASC, SECRESTYPE ASC, SECURITYID ASC END ELSE BEGIN SELECT TOP 25  SECDICTID, SECURITYTASKID, DICTID, SECRESTYPE, SECURITYID, DEX_ROW_ID FROM .SY10750 WHERE SECDICTID BETWEEN @SECDICTID_RS AND @SECDICTID_RE AND SECURITYTASKID BETWEEN @SECURITYTASKID_RS AND @SECURITYTASKID_RE AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND SECRESTYPE BETWEEN @SECRESTYPE_RS AND @SECRESTYPE_RE AND SECURITYID BETWEEN @SECURITYID_RS AND @SECURITYID_RE AND ( SECDICTID = @SECDICTID AND SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECRESTYPE = @SECRESTYPE AND SECURITYID > @SECURITYID OR SECDICTID = @SECDICTID AND SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECRESTYPE > @SECRESTYPE OR SECDICTID = @SECDICTID AND SECURITYTASKID = @SECURITYTASKID AND DICTID > @DICTID OR SECDICTID = @SECDICTID AND SECURITYTASKID > @SECURITYTASKID OR SECDICTID > @SECDICTID ) ORDER BY SECDICTID ASC, SECURITYTASKID ASC, DICTID ASC, SECRESTYPE ASC, SECURITYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10750N_1] TO [DYNGRP]
GO
