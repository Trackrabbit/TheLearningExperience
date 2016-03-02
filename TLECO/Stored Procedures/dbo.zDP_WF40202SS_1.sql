SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40202SS_1] (@Workflow_Type_Name char(51), @Email_Message_Type smallint, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  Workflow_Type_Name, Email_Message_Type, SEQNUMBR, Ord_Line, WF_Template_Field_Type, TableSeries, TableDictID, RSRCID, TablePhysicalName, FieldPhysicalName, FieldName, FieldDataType, TableRelationship, AdditionalFields, DEX_ROW_ID FROM .WF40202 WHERE Workflow_Type_Name = @Workflow_Type_Name AND Email_Message_Type = @Email_Message_Type AND SEQNUMBR = @SEQNUMBR ORDER BY Workflow_Type_Name ASC, Email_Message_Type ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40202SS_1] TO [DYNGRP]
GO
