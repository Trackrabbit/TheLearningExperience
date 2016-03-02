SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30200F_1] (@POPRequisitionNumber_RS char(17), @POPRequisitionNumber_RE char(17)) AS  set nocount on IF @POPRequisitionNumber_RS IS NULL BEGIN SELECT TOP 25  POPRequisitionNumber, Requisition_Note_Index, RequisitionDescription, RequisitionStatus, COMMNTID, Comment_Note_Index, DOCDATE, REQDATE, REQSTDBY, PRSTADCD, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, DOCAMNT, CREATDDT, MODIFDT, USER2ENT, Flags, VOIDED, Workflow_Status, DomainUserName, USERDEF1, USERDEF2, DEX_ROW_TS, DEX_ROW_ID FROM .POP30200 ORDER BY POPRequisitionNumber ASC END ELSE IF @POPRequisitionNumber_RS = @POPRequisitionNumber_RE BEGIN SELECT TOP 25  POPRequisitionNumber, Requisition_Note_Index, RequisitionDescription, RequisitionStatus, COMMNTID, Comment_Note_Index, DOCDATE, REQDATE, REQSTDBY, PRSTADCD, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, DOCAMNT, CREATDDT, MODIFDT, USER2ENT, Flags, VOIDED, Workflow_Status, DomainUserName, USERDEF1, USERDEF2, DEX_ROW_TS, DEX_ROW_ID FROM .POP30200 WHERE POPRequisitionNumber = @POPRequisitionNumber_RS ORDER BY POPRequisitionNumber ASC END ELSE BEGIN SELECT TOP 25  POPRequisitionNumber, Requisition_Note_Index, RequisitionDescription, RequisitionStatus, COMMNTID, Comment_Note_Index, DOCDATE, REQDATE, REQSTDBY, PRSTADCD, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, DOCAMNT, CREATDDT, MODIFDT, USER2ENT, Flags, VOIDED, Workflow_Status, DomainUserName, USERDEF1, USERDEF2, DEX_ROW_TS, DEX_ROW_ID FROM .POP30200 WHERE POPRequisitionNumber BETWEEN @POPRequisitionNumber_RS AND @POPRequisitionNumber_RE ORDER BY POPRequisitionNumber ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30200F_1] TO [DYNGRP]
GO
