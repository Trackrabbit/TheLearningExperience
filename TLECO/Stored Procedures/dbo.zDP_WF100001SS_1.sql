SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WF100001SS_1] (@Workflow_Type_Name char(51)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  Workflow_Type_Name, WF_Type_Description, FormID, DICTID, SERIES, Workflow_Class, WINNAME, Workflow_Managers, FieldsListGuid, WfTypeBusObjKey, WfTypeHistBusObjKey, NOTEINDX, DocAttachBusObjKeyFuncti, DocumentDrillDownFunctio, DEX_ROW_TS, DEX_ROW_ID FROM .WF100001 WHERE Workflow_Type_Name = @Workflow_Type_Name ORDER BY Workflow_Type_Name ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100001SS_1] TO [DYNGRP]
GO
