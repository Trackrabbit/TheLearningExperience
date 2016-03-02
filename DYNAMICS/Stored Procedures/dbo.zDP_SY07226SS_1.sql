SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07226SS_1] (@ListDictID smallint, @ListID smallint, @ViewID int, @USERID char(15), @ColSequence smallint) AS  set nocount on SELECT TOP 1  ListDictID, ListID, ViewID, USERID, ColSequence, ColFieldID, ColArrayIndex, ColFormatFldDictID, ColFormatFldFieldID, ColVisible, ColWidth, ColSortSequence, ColSortOrder, FilterTokenID, DEX_ROW_ID FROM .SY07226 WHERE ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND USERID = @USERID AND ColSequence = @ColSequence ORDER BY ListDictID ASC, ListID ASC, ViewID ASC, USERID ASC, ColSequence ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07226SS_1] TO [DYNGRP]
GO
