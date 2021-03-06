SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10600N_1] (@BS int, @SECURITYROLEID char(25), @SECURITYTASKID char(25), @SECURITYROLEID_RS char(25), @SECURITYTASKID_RS char(25), @SECURITYROLEID_RE char(25), @SECURITYTASKID_RE char(25)) AS  set nocount on IF @SECURITYROLEID_RS IS NULL BEGIN SELECT TOP 25  SECURITYROLEID, SECURITYTASKID, DEX_ROW_ID FROM .SY10600 WHERE ( SECURITYROLEID = @SECURITYROLEID AND SECURITYTASKID > @SECURITYTASKID OR SECURITYROLEID > @SECURITYROLEID ) ORDER BY SECURITYROLEID ASC, SECURITYTASKID ASC END ELSE IF @SECURITYROLEID_RS = @SECURITYROLEID_RE BEGIN SELECT TOP 25  SECURITYROLEID, SECURITYTASKID, DEX_ROW_ID FROM .SY10600 WHERE SECURITYROLEID = @SECURITYROLEID_RS AND SECURITYTASKID BETWEEN @SECURITYTASKID_RS AND @SECURITYTASKID_RE AND ( SECURITYROLEID = @SECURITYROLEID AND SECURITYTASKID > @SECURITYTASKID OR SECURITYROLEID > @SECURITYROLEID ) ORDER BY SECURITYROLEID ASC, SECURITYTASKID ASC END ELSE BEGIN SELECT TOP 25  SECURITYROLEID, SECURITYTASKID, DEX_ROW_ID FROM .SY10600 WHERE SECURITYROLEID BETWEEN @SECURITYROLEID_RS AND @SECURITYROLEID_RE AND SECURITYTASKID BETWEEN @SECURITYTASKID_RS AND @SECURITYTASKID_RE AND ( SECURITYROLEID = @SECURITYROLEID AND SECURITYTASKID > @SECURITYTASKID OR SECURITYROLEID > @SECURITYROLEID ) ORDER BY SECURITYROLEID ASC, SECURITYTASKID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10600N_1] TO [DYNGRP]
GO
