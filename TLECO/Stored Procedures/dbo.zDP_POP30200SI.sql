SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30200SI] (@POPRequisitionNumber char(17), @Requisition_Note_Index numeric(19,5), @RequisitionDescription char(61), @RequisitionStatus smallint, @COMMNTID char(15), @Comment_Note_Index numeric(19,5), @DOCDATE datetime, @REQDATE datetime, @REQSTDBY char(21), @PRSTADCD char(15), @CMPNYNAM char(65), @CONTACT char(61), @ADDRESS1 char(61), @ADDRESS2 char(61), @ADDRESS3 char(61), @CITY char(35), @STATE char(29), @ZIPCODE char(11), @CCode char(7), @COUNTRY char(61), @PHONE1 char(21), @PHONE2 char(21), @PHONE3 char(21), @FAX char(21), @DOCAMNT numeric(19,5), @CREATDDT datetime, @MODIFDT datetime, @USER2ENT char(15), @Flags smallint, @VOIDED tinyint, @Workflow_Status smallint, @DomainUserName char(255), @USERDEF1 char(21), @USERDEF2 char(21), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .POP30200 (POPRequisitionNumber, Requisition_Note_Index, RequisitionDescription, RequisitionStatus, COMMNTID, Comment_Note_Index, DOCDATE, REQDATE, REQSTDBY, PRSTADCD, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, DOCAMNT, CREATDDT, MODIFDT, USER2ENT, Flags, VOIDED, Workflow_Status, DomainUserName, USERDEF1, USERDEF2) VALUES ( @POPRequisitionNumber, @Requisition_Note_Index, @RequisitionDescription, @RequisitionStatus, @COMMNTID, @Comment_Note_Index, @DOCDATE, @REQDATE, @REQSTDBY, @PRSTADCD, @CMPNYNAM, @CONTACT, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @CCode, @COUNTRY, @PHONE1, @PHONE2, @PHONE3, @FAX, @DOCAMNT, @CREATDDT, @MODIFDT, @USER2ENT, @Flags, @VOIDED, @Workflow_Status, @DomainUserName, @USERDEF1, @USERDEF2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30200SI] TO [DYNGRP]
GO
