SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07210F_1] (@USERID_RS char(15), @DICTID_RS smallint, @FormID_RS smallint, @ColSequence_RS smallint, @USERID_RE char(15), @DICTID_RE smallint, @FormID_RE smallint, @ColSequence_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, DICTID, FormID, ColSequence, ColFieldID, ColSortOrder, ColVisible, ColWidth, ColArrayIndex, ColFormatFldDictID, ColFormatFldFieldID, DEX_ROW_ID FROM .SY07210 ORDER BY USERID ASC, DICTID ASC, FormID ASC, ColSequence ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, DICTID, FormID, ColSequence, ColFieldID, ColSortOrder, ColVisible, ColWidth, ColArrayIndex, ColFormatFldDictID, ColFormatFldFieldID, DEX_ROW_ID FROM .SY07210 WHERE USERID = @USERID_RS AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND FormID BETWEEN @FormID_RS AND @FormID_RE AND ColSequence BETWEEN @ColSequence_RS AND @ColSequence_RE ORDER BY USERID ASC, DICTID ASC, FormID ASC, ColSequence ASC END ELSE BEGIN SELECT TOP 25  USERID, DICTID, FormID, ColSequence, ColFieldID, ColSortOrder, ColVisible, ColWidth, ColArrayIndex, ColFormatFldDictID, ColFormatFldFieldID, DEX_ROW_ID FROM .SY07210 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND FormID BETWEEN @FormID_RS AND @FormID_RE AND ColSequence BETWEEN @ColSequence_RS AND @ColSequence_RE ORDER BY USERID ASC, DICTID ASC, FormID ASC, ColSequence ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07210F_1] TO [DYNGRP]
GO
