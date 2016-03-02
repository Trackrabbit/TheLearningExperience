SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateManualCheckLineInsertPost]  @I_vMLCHKTYP smallint,    @I_vPYADNMBR int,    @I_vEMPLOYID char(15),    @I_vMLTRXNBR int,    @I_vMLTRXTYP smallint,     @I_vUPRTRXCD char(6),     @I_vTRXBEGDT datetime,    @I_vTRXENDDT datetime,    @I_vMLTRXAMT numeric(19,5),   @I_vMLTRXHRS numeric(19,5),    @I_vRECEIPTS numeric(19,5),   @I_vDEPRTMNT char(6),    @I_vJOBTITLE char(6),    @I_vSTATECD char(2),    @I_vLOCALTAX char(6),    @I_vWRKRCOMP char(6),    @I_vSUTASTAT char(2),    @I_vDAYSWRDK numeric(19,5),    @I_vWKSWRKD numeric(19,5),    @I_vSHFTCODE char(6),    @I_vTXBLWAGS numeric(19,5),   @I_vRequesterTrx smallint,   @I_vUSERID char(15),             @I_vEFICAMT numeric(19,5),    @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateManualCheckLineInsertPost] TO [DYNGRP]
GO
