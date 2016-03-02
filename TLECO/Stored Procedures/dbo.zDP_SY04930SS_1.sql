SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04930SS_1] (@EmailMessageID char(25), @Ord_Line int) AS  set nocount on SELECT TOP 1  EmailMessageID, Ord_Line, FieldName, Workflow_Type_Name, Email_Message_Type, SEQNUMBR, DEX_ROW_ID FROM .SY04930 WHERE EmailMessageID = @EmailMessageID AND Ord_Line = @Ord_Line ORDER BY EmailMessageID ASC, Ord_Line ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04930SS_1] TO [DYNGRP]
GO
