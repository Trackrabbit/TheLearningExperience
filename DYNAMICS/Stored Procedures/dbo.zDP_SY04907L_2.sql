SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04907L_2] (@EmailSeriesID_RS smallint, @EmailDocumentID_RS smallint, @EmailSeriesID_RE smallint, @EmailDocumentID_RE smallint) AS  set nocount on IF @EmailSeriesID_RS IS NULL BEGIN SELECT TOP 25  EmailSeriesID, EmailDocumentID, Field_DictID, FIELDNAM, AdditionalFields, HistoryTable, OpenTable, WorkTable, HistOpenColumn, WorkColumn, Condition, DEX_ROW_ID FROM .SY04907 ORDER BY EmailSeriesID DESC, EmailDocumentID DESC, DEX_ROW_ID DESC END ELSE IF @EmailSeriesID_RS = @EmailSeriesID_RE BEGIN SELECT TOP 25  EmailSeriesID, EmailDocumentID, Field_DictID, FIELDNAM, AdditionalFields, HistoryTable, OpenTable, WorkTable, HistOpenColumn, WorkColumn, Condition, DEX_ROW_ID FROM .SY04907 WHERE EmailSeriesID = @EmailSeriesID_RS AND EmailDocumentID BETWEEN @EmailDocumentID_RS AND @EmailDocumentID_RE ORDER BY EmailSeriesID DESC, EmailDocumentID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  EmailSeriesID, EmailDocumentID, Field_DictID, FIELDNAM, AdditionalFields, HistoryTable, OpenTable, WorkTable, HistOpenColumn, WorkColumn, Condition, DEX_ROW_ID FROM .SY04907 WHERE EmailSeriesID BETWEEN @EmailSeriesID_RS AND @EmailSeriesID_RE AND EmailDocumentID BETWEEN @EmailDocumentID_RS AND @EmailDocumentID_RE ORDER BY EmailSeriesID DESC, EmailDocumentID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04907L_2] TO [DYNGRP]
GO
