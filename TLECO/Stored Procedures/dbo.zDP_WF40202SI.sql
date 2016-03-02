SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40202SI] (@Workflow_Type_Name char(51), @Email_Message_Type smallint, @SEQNUMBR int, @Ord_Line int, @WF_Template_Field_Type smallint, @TableSeries smallint, @TableDictID smallint, @RSRCID char(31), @TablePhysicalName char(31), @FieldPhysicalName char(31), @FieldName char(79), @FieldDataType smallint, @TableRelationship smallint, @AdditionalFields tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WF40202 (Workflow_Type_Name, Email_Message_Type, SEQNUMBR, Ord_Line, WF_Template_Field_Type, TableSeries, TableDictID, RSRCID, TablePhysicalName, FieldPhysicalName, FieldName, FieldDataType, TableRelationship, AdditionalFields) VALUES ( @Workflow_Type_Name, @Email_Message_Type, @SEQNUMBR, @Ord_Line, @WF_Template_Field_Type, @TableSeries, @TableDictID, @RSRCID, @TablePhysicalName, @FieldPhysicalName, @FieldName, @FieldDataType, @TableRelationship, @AdditionalFields) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40202SI] TO [DYNGRP]
GO
