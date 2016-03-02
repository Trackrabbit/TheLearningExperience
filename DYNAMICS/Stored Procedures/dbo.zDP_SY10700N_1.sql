SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10700N_1] (@BS int, @SECURITYTASKID char(25), @DICTID smallint, @SECURITYID int, @SECRESTYPE smallint, @SECURITYTASKID_RS char(25), @DICTID_RS smallint, @SECURITYID_RS int, @SECRESTYPE_RS smallint, @SECURITYTASKID_RE char(25), @DICTID_RE smallint, @SECURITYID_RE int, @SECRESTYPE_RE smallint) AS  set nocount on IF @SECURITYTASKID_RS IS NULL BEGIN SELECT TOP 25  SECURITYTASKID, DICTID, SECURITYID, SECRESTYPE, DEX_ROW_ID FROM .SY10700 WHERE ( SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECURITYID = @SECURITYID AND SECRESTYPE > @SECRESTYPE OR SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECURITYID > @SECURITYID OR SECURITYTASKID = @SECURITYTASKID AND DICTID > @DICTID OR SECURITYTASKID > @SECURITYTASKID ) ORDER BY SECURITYTASKID ASC, DICTID ASC, SECURITYID ASC, SECRESTYPE ASC END ELSE IF @SECURITYTASKID_RS = @SECURITYTASKID_RE BEGIN SELECT TOP 25  SECURITYTASKID, DICTID, SECURITYID, SECRESTYPE, DEX_ROW_ID FROM .SY10700 WHERE SECURITYTASKID = @SECURITYTASKID_RS AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND SECURITYID BETWEEN @SECURITYID_RS AND @SECURITYID_RE AND SECRESTYPE BETWEEN @SECRESTYPE_RS AND @SECRESTYPE_RE AND ( SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECURITYID = @SECURITYID AND SECRESTYPE > @SECRESTYPE OR SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECURITYID > @SECURITYID OR SECURITYTASKID = @SECURITYTASKID AND DICTID > @DICTID OR SECURITYTASKID > @SECURITYTASKID ) ORDER BY SECURITYTASKID ASC, DICTID ASC, SECURITYID ASC, SECRESTYPE ASC END ELSE BEGIN SELECT TOP 25  SECURITYTASKID, DICTID, SECURITYID, SECRESTYPE, DEX_ROW_ID FROM .SY10700 WHERE SECURITYTASKID BETWEEN @SECURITYTASKID_RS AND @SECURITYTASKID_RE AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND SECURITYID BETWEEN @SECURITYID_RS AND @SECURITYID_RE AND SECRESTYPE BETWEEN @SECRESTYPE_RS AND @SECRESTYPE_RE AND ( SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECURITYID = @SECURITYID AND SECRESTYPE > @SECRESTYPE OR SECURITYTASKID = @SECURITYTASKID AND DICTID = @DICTID AND SECURITYID > @SECURITYID OR SECURITYTASKID = @SECURITYTASKID AND DICTID > @DICTID OR SECURITYTASKID > @SECURITYTASKID ) ORDER BY SECURITYTASKID ASC, DICTID ASC, SECURITYID ASC, SECRESTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10700N_1] TO [DYNGRP]
GO
