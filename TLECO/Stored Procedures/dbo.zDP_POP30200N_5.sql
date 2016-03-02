SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30200N_5] (@BS int, @REQDATE datetime, @POPRequisitionNumber char(17), @REQDATE_RS datetime, @POPRequisitionNumber_RS char(17), @REQDATE_RE datetime, @POPRequisitionNumber_RE char(17)) AS  set nocount on IF @REQDATE_RS IS NULL BEGIN SELECT TOP 25  POPRequisitionNumber, Requisition_Note_Index, RequisitionDescription, RequisitionStatus, COMMNTID, Comment_Note_Index, DOCDATE, REQDATE, REQSTDBY, PRSTADCD, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, DOCAMNT, CREATDDT, MODIFDT, USER2ENT, Flags, VOIDED, Workflow_Status, DomainUserName, USERDEF1, USERDEF2, DEX_ROW_TS, DEX_ROW_ID FROM .POP30200 WHERE ( REQDATE = @REQDATE AND POPRequisitionNumber > @POPRequisitionNumber OR REQDATE > @REQDATE ) ORDER BY REQDATE ASC, POPRequisitionNumber ASC END ELSE IF @REQDATE_RS = @REQDATE_RE BEGIN SELECT TOP 25  POPRequisitionNumber, Requisition_Note_Index, RequisitionDescription, RequisitionStatus, COMMNTID, Comment_Note_Index, DOCDATE, REQDATE, REQSTDBY, PRSTADCD, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, DOCAMNT, CREATDDT, MODIFDT, USER2ENT, Flags, VOIDED, Workflow_Status, DomainUserName, USERDEF1, USERDEF2, DEX_ROW_TS, DEX_ROW_ID FROM .POP30200 WHERE REQDATE = @REQDATE_RS AND POPRequisitionNumber BETWEEN @POPRequisitionNumber_RS AND @POPRequisitionNumber_RE AND ( REQDATE = @REQDATE AND POPRequisitionNumber > @POPRequisitionNumber OR REQDATE > @REQDATE ) ORDER BY REQDATE ASC, POPRequisitionNumber ASC END ELSE BEGIN SELECT TOP 25  POPRequisitionNumber, Requisition_Note_Index, RequisitionDescription, RequisitionStatus, COMMNTID, Comment_Note_Index, DOCDATE, REQDATE, REQSTDBY, PRSTADCD, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, DOCAMNT, CREATDDT, MODIFDT, USER2ENT, Flags, VOIDED, Workflow_Status, DomainUserName, USERDEF1, USERDEF2, DEX_ROW_TS, DEX_ROW_ID FROM .POP30200 WHERE REQDATE BETWEEN @REQDATE_RS AND @REQDATE_RE AND POPRequisitionNumber BETWEEN @POPRequisitionNumber_RS AND @POPRequisitionNumber_RE AND ( REQDATE = @REQDATE AND POPRequisitionNumber > @POPRequisitionNumber OR REQDATE > @REQDATE ) ORDER BY REQDATE ASC, POPRequisitionNumber ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30200N_5] TO [DYNGRP]
GO
