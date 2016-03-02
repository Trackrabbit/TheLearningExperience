SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10600N_2] (@BS int, @SECURITYTASKID char(25), @SECURITYROLEID char(25), @SECURITYTASKID_RS char(25), @SECURITYROLEID_RS char(25), @SECURITYTASKID_RE char(25), @SECURITYROLEID_RE char(25)) AS  set nocount on IF @SECURITYTASKID_RS IS NULL BEGIN SELECT TOP 25  SECURITYROLEID, SECURITYTASKID, DEX_ROW_ID FROM .SY10600 WHERE ( SECURITYTASKID = @SECURITYTASKID AND SECURITYROLEID > @SECURITYROLEID OR SECURITYTASKID > @SECURITYTASKID ) ORDER BY SECURITYTASKID ASC, SECURITYROLEID ASC END ELSE IF @SECURITYTASKID_RS = @SECURITYTASKID_RE BEGIN SELECT TOP 25  SECURITYROLEID, SECURITYTASKID, DEX_ROW_ID FROM .SY10600 WHERE SECURITYTASKID = @SECURITYTASKID_RS AND SECURITYROLEID BETWEEN @SECURITYROLEID_RS AND @SECURITYROLEID_RE AND ( SECURITYTASKID = @SECURITYTASKID AND SECURITYROLEID > @SECURITYROLEID OR SECURITYTASKID > @SECURITYTASKID ) ORDER BY SECURITYTASKID ASC, SECURITYROLEID ASC END ELSE BEGIN SELECT TOP 25  SECURITYROLEID, SECURITYTASKID, DEX_ROW_ID FROM .SY10600 WHERE SECURITYTASKID BETWEEN @SECURITYTASKID_RS AND @SECURITYTASKID_RE AND SECURITYROLEID BETWEEN @SECURITYROLEID_RS AND @SECURITYROLEID_RE AND ( SECURITYTASKID = @SECURITYTASKID AND SECURITYROLEID > @SECURITYROLEID OR SECURITYTASKID > @SECURITYTASKID ) ORDER BY SECURITYTASKID ASC, SECURITYROLEID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10600N_2] TO [DYNGRP]
GO
