SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04907L_1] (@EmailSeriesID_RS smallint, @EmailDocumentID_RS smallint, @Field_DictID_RS smallint, @FIELDNAM_RS char(31), @EmailSeriesID_RE smallint, @EmailDocumentID_RE smallint, @Field_DictID_RE smallint, @FIELDNAM_RE char(31)) AS  set nocount on IF @EmailSeriesID_RS IS NULL BEGIN SELECT TOP 25  EmailSeriesID, EmailDocumentID, Field_DictID, FIELDNAM, AdditionalFields, HistoryTable, OpenTable, WorkTable, HistOpenColumn, WorkColumn, Condition, DEX_ROW_ID FROM .SY04907 ORDER BY EmailSeriesID DESC, EmailDocumentID DESC, Field_DictID DESC, FIELDNAM DESC END ELSE IF @EmailSeriesID_RS = @EmailSeriesID_RE BEGIN SELECT TOP 25  EmailSeriesID, EmailDocumentID, Field_DictID, FIELDNAM, AdditionalFields, HistoryTable, OpenTable, WorkTable, HistOpenColumn, WorkColumn, Condition, DEX_ROW_ID FROM .SY04907 WHERE EmailSeriesID = @EmailSeriesID_RS AND EmailDocumentID BETWEEN @EmailDocumentID_RS AND @EmailDocumentID_RE AND Field_DictID BETWEEN @Field_DictID_RS AND @Field_DictID_RE AND FIELDNAM BETWEEN @FIELDNAM_RS AND @FIELDNAM_RE ORDER BY EmailSeriesID DESC, EmailDocumentID DESC, Field_DictID DESC, FIELDNAM DESC END ELSE BEGIN SELECT TOP 25  EmailSeriesID, EmailDocumentID, Field_DictID, FIELDNAM, AdditionalFields, HistoryTable, OpenTable, WorkTable, HistOpenColumn, WorkColumn, Condition, DEX_ROW_ID FROM .SY04907 WHERE EmailSeriesID BETWEEN @EmailSeriesID_RS AND @EmailSeriesID_RE AND EmailDocumentID BETWEEN @EmailDocumentID_RS AND @EmailDocumentID_RE AND Field_DictID BETWEEN @Field_DictID_RS AND @Field_DictID_RE AND FIELDNAM BETWEEN @FIELDNAM_RS AND @FIELDNAM_RE ORDER BY EmailSeriesID DESC, EmailDocumentID DESC, Field_DictID DESC, FIELDNAM DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04907L_1] TO [DYNGRP]
GO