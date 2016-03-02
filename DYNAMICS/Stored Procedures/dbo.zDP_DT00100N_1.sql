SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DT00100N_1] (@BS int, @CMPANYID smallint, @USERID char(15), @TOOLBARBUTTON smallint, @TOOLBARSEQ smallint, @CMPANYID_RS smallint, @USERID_RS char(15), @TOOLBARBUTTON_RS smallint, @TOOLBARSEQ_RS smallint, @CMPANYID_RE smallint, @USERID_RE char(15), @TOOLBARBUTTON_RE smallint, @TOOLBARSEQ_RE smallint) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  DICTID, CMPANYID, USERID, TOOLBARBUTTON, TOOLBARSEQ, TOOLBARTYPE, TOOLBARPROMPT, TOOLBARCOMMAND, TOOLBARCMDPARMS, DEX_ROW_ID FROM .DT00100 WHERE ( CMPANYID = @CMPANYID AND USERID = @USERID AND TOOLBARBUTTON = @TOOLBARBUTTON AND TOOLBARSEQ > @TOOLBARSEQ OR CMPANYID = @CMPANYID AND USERID = @USERID AND TOOLBARBUTTON > @TOOLBARBUTTON OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, TOOLBARBUTTON ASC, TOOLBARSEQ ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  DICTID, CMPANYID, USERID, TOOLBARBUTTON, TOOLBARSEQ, TOOLBARTYPE, TOOLBARPROMPT, TOOLBARCOMMAND, TOOLBARCMDPARMS, DEX_ROW_ID FROM .DT00100 WHERE CMPANYID = @CMPANYID_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND TOOLBARBUTTON BETWEEN @TOOLBARBUTTON_RS AND @TOOLBARBUTTON_RE AND TOOLBARSEQ BETWEEN @TOOLBARSEQ_RS AND @TOOLBARSEQ_RE AND ( CMPANYID = @CMPANYID AND USERID = @USERID AND TOOLBARBUTTON = @TOOLBARBUTTON AND TOOLBARSEQ > @TOOLBARSEQ OR CMPANYID = @CMPANYID AND USERID = @USERID AND TOOLBARBUTTON > @TOOLBARBUTTON OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, TOOLBARBUTTON ASC, TOOLBARSEQ ASC END ELSE BEGIN SELECT TOP 25  DICTID, CMPANYID, USERID, TOOLBARBUTTON, TOOLBARSEQ, TOOLBARTYPE, TOOLBARPROMPT, TOOLBARCOMMAND, TOOLBARCMDPARMS, DEX_ROW_ID FROM .DT00100 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND TOOLBARBUTTON BETWEEN @TOOLBARBUTTON_RS AND @TOOLBARBUTTON_RE AND TOOLBARSEQ BETWEEN @TOOLBARSEQ_RS AND @TOOLBARSEQ_RE AND ( CMPANYID = @CMPANYID AND USERID = @USERID AND TOOLBARBUTTON = @TOOLBARBUTTON AND TOOLBARSEQ > @TOOLBARSEQ OR CMPANYID = @CMPANYID AND USERID = @USERID AND TOOLBARBUTTON > @TOOLBARBUTTON OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, TOOLBARBUTTON ASC, TOOLBARSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DT00100N_1] TO [DYNGRP]
GO
