SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateManualCheckLineInsertPre]  @I_vMLCHKTYP smallint output,   @I_vPYADNMBR int output,   @I_vEMPLOYID char(15) output,   @I_vMLTRXNBR int output,   @I_vMLTRXTYP smallint output,    @I_vUPRTRXCD char(6) output,     @I_vTRXBEGDT datetime output,   @I_vTRXENDDT datetime output,   @I_vMLTRXAMT numeric(19,5) output,  @I_vMLTRXHRS numeric(19,5) output,   @I_vRECEIPTS numeric(19,5) output,  @I_vDEPRTMNT char(6) output,   @I_vJOBTITLE char(6) output,   @I_vSTATECD char(2) output,   @I_vLOCALTAX char(6) output,   @I_vWRKRCOMP char(6) output,   @I_vSUTASTAT char(2) output,   @I_vDAYSWRDK numeric(19,5) output,   @I_vWKSWRKD numeric(19,5) output,   @I_vSHFTCODE char(6) output,   @I_vTXBLWAGS numeric(19,5) output,  @I_vRequesterTrx smallint output,  @I_vUSERID char(15) output,   @I_vEFICAMT numeric(19,5) output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output ,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateManualCheckLineInsertPre] TO [DYNGRP]
GO
