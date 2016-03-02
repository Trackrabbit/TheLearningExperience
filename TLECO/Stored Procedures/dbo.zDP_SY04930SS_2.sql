SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04930SS_2] (@EmailMessageID char(25), @Workflow_Type_Name char(51), @Email_Message_Type smallint, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  EmailMessageID, Ord_Line, FieldName, Workflow_Type_Name, Email_Message_Type, SEQNUMBR, DEX_ROW_ID FROM .SY04930 WHERE EmailMessageID = @EmailMessageID AND Workflow_Type_Name = @Workflow_Type_Name AND Email_Message_Type = @Email_Message_Type AND SEQNUMBR = @SEQNUMBR ORDER BY EmailMessageID ASC, Workflow_Type_Name ASC, Email_Message_Type ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04930SS_2] TO [DYNGRP]
GO
