SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04930N_1] (@BS int, @EmailMessageID char(25), @Ord_Line int, @EmailMessageID_RS char(25), @Ord_Line_RS int, @EmailMessageID_RE char(25), @Ord_Line_RE int) AS  set nocount on IF @EmailMessageID_RS IS NULL BEGIN SELECT TOP 25  EmailMessageID, Ord_Line, FieldName, Workflow_Type_Name, Email_Message_Type, SEQNUMBR, DEX_ROW_ID FROM .SY04930 WHERE ( EmailMessageID = @EmailMessageID AND Ord_Line > @Ord_Line OR EmailMessageID > @EmailMessageID ) ORDER BY EmailMessageID ASC, Ord_Line ASC END ELSE IF @EmailMessageID_RS = @EmailMessageID_RE BEGIN SELECT TOP 25  EmailMessageID, Ord_Line, FieldName, Workflow_Type_Name, Email_Message_Type, SEQNUMBR, DEX_ROW_ID FROM .SY04930 WHERE EmailMessageID = @EmailMessageID_RS AND Ord_Line BETWEEN @Ord_Line_RS AND @Ord_Line_RE AND ( EmailMessageID = @EmailMessageID AND Ord_Line > @Ord_Line OR EmailMessageID > @EmailMessageID ) ORDER BY EmailMessageID ASC, Ord_Line ASC END ELSE BEGIN SELECT TOP 25  EmailMessageID, Ord_Line, FieldName, Workflow_Type_Name, Email_Message_Type, SEQNUMBR, DEX_ROW_ID FROM .SY04930 WHERE EmailMessageID BETWEEN @EmailMessageID_RS AND @EmailMessageID_RE AND Ord_Line BETWEEN @Ord_Line_RS AND @Ord_Line_RE AND ( EmailMessageID = @EmailMessageID AND Ord_Line > @Ord_Line OR EmailMessageID > @EmailMessageID ) ORDER BY EmailMessageID ASC, Ord_Line ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04930N_1] TO [DYNGRP]
GO
