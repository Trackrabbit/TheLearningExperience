SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WF100001F_1] (@Workflow_Type_Name_RS char(51), @Workflow_Type_Name_RE char(51)) AS /* 14.00.0084.000 */ set nocount on IF @Workflow_Type_Name_RS IS NULL BEGIN SELECT TOP 25  Workflow_Type_Name, WF_Type_Description, FormID, DICTID, SERIES, Workflow_Class, WINNAME, Workflow_Managers, FieldsListGuid, WfTypeBusObjKey, WfTypeHistBusObjKey, NOTEINDX, DocAttachBusObjKeyFuncti, DocumentDrillDownFunctio, DEX_ROW_TS, DEX_ROW_ID FROM .WF100001 ORDER BY Workflow_Type_Name ASC END ELSE IF @Workflow_Type_Name_RS = @Workflow_Type_Name_RE BEGIN SELECT TOP 25  Workflow_Type_Name, WF_Type_Description, FormID, DICTID, SERIES, Workflow_Class, WINNAME, Workflow_Managers, FieldsListGuid, WfTypeBusObjKey, WfTypeHistBusObjKey, NOTEINDX, DocAttachBusObjKeyFuncti, DocumentDrillDownFunctio, DEX_ROW_TS, DEX_ROW_ID FROM .WF100001 WHERE Workflow_Type_Name = @Workflow_Type_Name_RS ORDER BY Workflow_Type_Name ASC END ELSE BEGIN SELECT TOP 25  Workflow_Type_Name, WF_Type_Description, FormID, DICTID, SERIES, Workflow_Class, WINNAME, Workflow_Managers, FieldsListGuid, WfTypeBusObjKey, WfTypeHistBusObjKey, NOTEINDX, DocAttachBusObjKeyFuncti, DocumentDrillDownFunctio, DEX_ROW_TS, DEX_ROW_ID FROM .WF100001 WHERE Workflow_Type_Name BETWEEN @Workflow_Type_Name_RS AND @Workflow_Type_Name_RE ORDER BY Workflow_Type_Name ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100001F_1] TO [DYNGRP]
GO
