SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07226SI] (@ListDictID smallint, @ListID smallint, @ViewID int, @USERID char(15), @ColSequence smallint, @ColFieldID smallint, @ColArrayIndex smallint, @ColFormatFldDictID smallint, @ColFormatFldFieldID smallint, @ColVisible tinyint, @ColWidth smallint, @ColSortSequence smallint, @ColSortOrder smallint, @FilterTokenID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07226 (ListDictID, ListID, ViewID, USERID, ColSequence, ColFieldID, ColArrayIndex, ColFormatFldDictID, ColFormatFldFieldID, ColVisible, ColWidth, ColSortSequence, ColSortOrder, FilterTokenID) VALUES ( @ListDictID, @ListID, @ViewID, @USERID, @ColSequence, @ColFieldID, @ColArrayIndex, @ColFormatFldDictID, @ColFormatFldFieldID, @ColVisible, @ColWidth, @ColSortSequence, @ColSortOrder, @FilterTokenID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07226SI] TO [DYNGRP]
GO
