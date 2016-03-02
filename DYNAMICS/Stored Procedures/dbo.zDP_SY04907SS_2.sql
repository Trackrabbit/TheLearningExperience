SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04907SS_2] (@EmailSeriesID smallint, @EmailDocumentID smallint) AS  set nocount on SELECT TOP 1  EmailSeriesID, EmailDocumentID, Field_DictID, FIELDNAM, AdditionalFields, HistoryTable, OpenTable, WorkTable, HistOpenColumn, WorkColumn, Condition, DEX_ROW_ID FROM .SY04907 WHERE EmailSeriesID = @EmailSeriesID AND EmailDocumentID = @EmailDocumentID ORDER BY EmailSeriesID ASC, EmailDocumentID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04907SS_2] TO [DYNGRP]
GO
