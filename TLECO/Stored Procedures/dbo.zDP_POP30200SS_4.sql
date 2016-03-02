SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30200SS_4] (@RequisitionStatus smallint, @POPRequisitionNumber char(17)) AS  set nocount on SELECT TOP 1  POPRequisitionNumber, Requisition_Note_Index, RequisitionDescription, RequisitionStatus, COMMNTID, Comment_Note_Index, DOCDATE, REQDATE, REQSTDBY, PRSTADCD, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, DOCAMNT, CREATDDT, MODIFDT, USER2ENT, Flags, VOIDED, Workflow_Status, DomainUserName, USERDEF1, USERDEF2, DEX_ROW_TS, DEX_ROW_ID FROM .POP30200 WHERE RequisitionStatus = @RequisitionStatus AND POPRequisitionNumber = @POPRequisitionNumber ORDER BY RequisitionStatus ASC, POPRequisitionNumber ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30200SS_4] TO [DYNGRP]
GO
