SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WF100001SI] (@Workflow_Type_Name char(51), @WF_Type_Description char(101), @FormID smallint, @DICTID smallint, @SERIES smallint, @Workflow_Class char(31), @WINNAME char(79), @Workflow_Managers char(37), @FieldsListGuid char(37), @WfTypeBusObjKey char(201), @WfTypeHistBusObjKey char(201), @NOTEINDX numeric(19,5), @DocAttachBusObjKeyFuncti char(101), @DocumentDrillDownFunctio char(101), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .WF100001 (Workflow_Type_Name, WF_Type_Description, FormID, DICTID, SERIES, Workflow_Class, WINNAME, Workflow_Managers, FieldsListGuid, WfTypeBusObjKey, WfTypeHistBusObjKey, NOTEINDX, DocAttachBusObjKeyFuncti, DocumentDrillDownFunctio) VALUES ( @Workflow_Type_Name, @WF_Type_Description, @FormID, @DICTID, @SERIES, @Workflow_Class, @WINNAME, @Workflow_Managers, @FieldsListGuid, @WfTypeBusObjKey, @WfTypeHistBusObjKey, @NOTEINDX, @DocAttachBusObjKeyFuncti, @DocumentDrillDownFunctio) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WF100001SI] TO [DYNGRP]
GO
