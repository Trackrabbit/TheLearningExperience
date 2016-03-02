SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04907SS_1] (@EmailSeriesID smallint, @EmailDocumentID smallint, @Field_DictID smallint, @FIELDNAM char(31)) AS  set nocount on SELECT TOP 1  EmailSeriesID, EmailDocumentID, Field_DictID, FIELDNAM, AdditionalFields, HistoryTable, OpenTable, WorkTable, HistOpenColumn, WorkColumn, Condition, DEX_ROW_ID FROM .SY04907 WHERE EmailSeriesID = @EmailSeriesID AND EmailDocumentID = @EmailDocumentID AND Field_DictID = @Field_DictID AND FIELDNAM = @FIELDNAM ORDER BY EmailSeriesID ASC, EmailDocumentID ASC, Field_DictID ASC, FIELDNAM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04907SS_1] TO [DYNGRP]
GO
