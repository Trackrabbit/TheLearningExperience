SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04930SI] (@EmailMessageID char(25), @Ord_Line int, @FieldName char(79), @Workflow_Type_Name char(51), @Email_Message_Type smallint, @SEQNUMBR int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04930 (EmailMessageID, Ord_Line, FieldName, Workflow_Type_Name, Email_Message_Type, SEQNUMBR) VALUES ( @EmailMessageID, @Ord_Line, @FieldName, @Workflow_Type_Name, @Email_Message_Type, @SEQNUMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04930SI] TO [DYNGRP]
GO
