SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA00200N_1] (@BS int, @GROUPID char(15), @CODEID char(15), @GROUPID_RS char(15), @CODEID_RS char(15), @GROUPID_RE char(15), @CODEID_RE char(15)) AS  set nocount on IF @GROUPID_RS IS NULL BEGIN SELECT TOP 25  GROUPID, CODEID, CODEDESC, DEX_ROW_ID FROM .DTA00200 WHERE ( GROUPID = @GROUPID AND CODEID > @CODEID OR GROUPID > @GROUPID ) ORDER BY GROUPID ASC, CODEID ASC END ELSE IF @GROUPID_RS = @GROUPID_RE BEGIN SELECT TOP 25  GROUPID, CODEID, CODEDESC, DEX_ROW_ID FROM .DTA00200 WHERE GROUPID = @GROUPID_RS AND CODEID BETWEEN @CODEID_RS AND @CODEID_RE AND ( GROUPID = @GROUPID AND CODEID > @CODEID OR GROUPID > @GROUPID ) ORDER BY GROUPID ASC, CODEID ASC END ELSE BEGIN SELECT TOP 25  GROUPID, CODEID, CODEDESC, DEX_ROW_ID FROM .DTA00200 WHERE GROUPID BETWEEN @GROUPID_RS AND @GROUPID_RE AND CODEID BETWEEN @CODEID_RS AND @CODEID_RE AND ( GROUPID = @GROUPID AND CODEID > @CODEID OR GROUPID > @GROUPID ) ORDER BY GROUPID ASC, CODEID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA00200N_1] TO [DYNGRP]
GO
