SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07210SI] (@USERID char(15), @DICTID smallint, @FormID smallint, @ColSequence smallint, @ColFieldID smallint, @ColSortOrder smallint, @ColVisible tinyint, @ColWidth smallint, @ColArrayIndex smallint, @ColFormatFldDictID smallint, @ColFormatFldFieldID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07210 (USERID, DICTID, FormID, ColSequence, ColFieldID, ColSortOrder, ColVisible, ColWidth, ColArrayIndex, ColFormatFldDictID, ColFormatFldFieldID) VALUES ( @USERID, @DICTID, @FormID, @ColSequence, @ColFieldID, @ColSortOrder, @ColVisible, @ColWidth, @ColArrayIndex, @ColFormatFldDictID, @ColFormatFldFieldID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07210SI] TO [DYNGRP]
GO
