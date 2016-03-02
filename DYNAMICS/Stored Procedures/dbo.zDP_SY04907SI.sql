SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04907SI] (@EmailSeriesID smallint, @EmailDocumentID smallint, @Field_DictID smallint, @FIELDNAM char(31), @AdditionalFields tinyint, @HistoryTable char(31), @OpenTable char(31), @WorkTable char(31), @HistOpenColumn char(31), @WorkColumn char(31), @Condition char(51), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04907 (EmailSeriesID, EmailDocumentID, Field_DictID, FIELDNAM, AdditionalFields, HistoryTable, OpenTable, WorkTable, HistOpenColumn, WorkColumn, Condition) VALUES ( @EmailSeriesID, @EmailDocumentID, @Field_DictID, @FIELDNAM, @AdditionalFields, @HistoryTable, @OpenTable, @WorkTable, @HistOpenColumn, @WorkColumn, @Condition) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04907SI] TO [DYNGRP]
GO
