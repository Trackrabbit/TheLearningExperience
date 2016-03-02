SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07210SS_1] (@USERID char(15), @DICTID smallint, @FormID smallint, @ColSequence smallint) AS  set nocount on SELECT TOP 1  USERID, DICTID, FormID, ColSequence, ColFieldID, ColSortOrder, ColVisible, ColWidth, ColArrayIndex, ColFormatFldDictID, ColFormatFldFieldID, DEX_ROW_ID FROM .SY07210 WHERE USERID = @USERID AND DICTID = @DICTID AND FormID = @FormID AND ColSequence = @ColSequence ORDER BY USERID ASC, DICTID ASC, FormID ASC, ColSequence ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07210SS_1] TO [DYNGRP]
GO
