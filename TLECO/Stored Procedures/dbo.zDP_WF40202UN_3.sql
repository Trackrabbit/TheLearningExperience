SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40202UN_3] (@BS int, @Workflow_Type_Name char(51), @Email_Message_Type smallint, @Ord_Line int, @Workflow_Type_Name_RS char(51), @Email_Message_Type_RS smallint, @Ord_Line_RS int, @Workflow_Type_Name_RE char(51), @Email_Message_Type_RE smallint, @Ord_Line_RE int) AS  set nocount on IF @Workflow_Type_Name_RS IS NULL BEGIN SELECT TOP 25  Workflow_Type_Name, Email_Message_Type, SEQNUMBR, Ord_Line, WF_Template_Field_Type, TableSeries, TableDictID, RSRCID, TablePhysicalName, FieldPhysicalName, FieldName, FieldDataType, TableRelationship, AdditionalFields, DEX_ROW_ID FROM .WF40202 WHERE ( Workflow_Type_Name = @Workflow_Type_Name AND Email_Message_Type = @Email_Message_Type AND Ord_Line > @Ord_Line OR Workflow_Type_Name = @Workflow_Type_Name AND Email_Message_Type > @Email_Message_Type OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, Email_Message_Type ASC, Ord_Line ASC, DEX_ROW_ID ASC END ELSE IF @Workflow_Type_Name_RS = @Workflow_Type_Name_RE BEGIN SELECT TOP 25  Workflow_Type_Name, Email_Message_Type, SEQNUMBR, Ord_Line, WF_Template_Field_Type, TableSeries, TableDictID, RSRCID, TablePhysicalName, FieldPhysicalName, FieldName, FieldDataType, TableRelationship, AdditionalFields, DEX_ROW_ID FROM .WF40202 WHERE Workflow_Type_Name = @Workflow_Type_Name_RS AND Email_Message_Type BETWEEN @Email_Message_Type_RS AND @Email_Message_Type_RE AND Ord_Line BETWEEN @Ord_Line_RS AND @Ord_Line_RE AND ( Workflow_Type_Name = @Workflow_Type_Name AND Email_Message_Type = @Email_Message_Type AND Ord_Line > @Ord_Line OR Workflow_Type_Name = @Workflow_Type_Name AND Email_Message_Type > @Email_Message_Type OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, Email_Message_Type ASC, Ord_Line ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Workflow_Type_Name, Email_Message_Type, SEQNUMBR, Ord_Line, WF_Template_Field_Type, TableSeries, TableDictID, RSRCID, TablePhysicalName, FieldPhysicalName, FieldName, FieldDataType, TableRelationship, AdditionalFields, DEX_ROW_ID FROM .WF40202 WHERE Workflow_Type_Name BETWEEN @Workflow_Type_Name_RS AND @Workflow_Type_Name_RE AND Email_Message_Type BETWEEN @Email_Message_Type_RS AND @Email_Message_Type_RE AND Ord_Line BETWEEN @Ord_Line_RS AND @Ord_Line_RE AND ( Workflow_Type_Name = @Workflow_Type_Name AND Email_Message_Type = @Email_Message_Type AND Ord_Line > @Ord_Line OR Workflow_Type_Name = @Workflow_Type_Name AND Email_Message_Type > @Email_Message_Type OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, Email_Message_Type ASC, Ord_Line ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40202UN_3] TO [DYNGRP]
GO
