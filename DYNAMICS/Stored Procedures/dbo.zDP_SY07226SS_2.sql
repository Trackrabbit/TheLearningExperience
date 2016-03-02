SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07226SS_2] (@ListDictID smallint, @ListID smallint, @ViewID int, @USERID char(15), @ColSortSequence smallint) AS  set nocount on SELECT TOP 1  ListDictID, ListID, ViewID, USERID, ColSequence, ColFieldID, ColArrayIndex, ColFormatFldDictID, ColFormatFldFieldID, ColVisible, ColWidth, ColSortSequence, ColSortOrder, FilterTokenID, DEX_ROW_ID FROM .SY07226 WHERE ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND USERID = @USERID AND ColSortSequence = @ColSortSequence ORDER BY ListDictID ASC, ListID ASC, ViewID ASC, USERID ASC, ColSortSequence ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07226SS_2] TO [DYNGRP]
GO
