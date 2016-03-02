SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP100N_1] (@BS int, @CMPANYID smallint, @USERID char(15), @FORMNAME char(79), @ASI_Sequence smallint, @CMPANYID_RS smallint, @USERID_RS char(15), @FORMNAME_RS char(79), @ASI_Sequence_RS smallint, @CMPANYID_RE smallint, @USERID_RE char(15), @FORMNAME_RE char(79), @ASI_Sequence_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, USERID, FORMNAME, ASI_Field_Number, ASI_Field_Number_Dict_ID, ASI_Ascending, ASI_Sequence, DEX_ROW_ID FROM .ASIEXP100 WHERE ( CMPANYID = @CMPANYID AND USERID = @USERID AND FORMNAME = @FORMNAME AND ASI_Sequence > @ASI_Sequence OR CMPANYID = @CMPANYID AND USERID = @USERID AND FORMNAME > @FORMNAME OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, FORMNAME ASC, ASI_Sequence ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, USERID, FORMNAME, ASI_Field_Number, ASI_Field_Number_Dict_ID, ASI_Ascending, ASI_Sequence, DEX_ROW_ID FROM .ASIEXP100 WHERE CMPANYID = @CMPANYID_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND FORMNAME BETWEEN @FORMNAME_RS AND @FORMNAME_RE AND ASI_Sequence BETWEEN @ASI_Sequence_RS AND @ASI_Sequence_RE AND ( CMPANYID = @CMPANYID AND USERID = @USERID AND FORMNAME = @FORMNAME AND ASI_Sequence > @ASI_Sequence OR CMPANYID = @CMPANYID AND USERID = @USERID AND FORMNAME > @FORMNAME OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, FORMNAME ASC, ASI_Sequence ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, USERID, FORMNAME, ASI_Field_Number, ASI_Field_Number_Dict_ID, ASI_Ascending, ASI_Sequence, DEX_ROW_ID FROM .ASIEXP100 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND FORMNAME BETWEEN @FORMNAME_RS AND @FORMNAME_RE AND ASI_Sequence BETWEEN @ASI_Sequence_RS AND @ASI_Sequence_RE AND ( CMPANYID = @CMPANYID AND USERID = @USERID AND FORMNAME = @FORMNAME AND ASI_Sequence > @ASI_Sequence OR CMPANYID = @CMPANYID AND USERID = @USERID AND FORMNAME > @FORMNAME OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, FORMNAME ASC, ASI_Sequence ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP100N_1] TO [DYNGRP]
GO
