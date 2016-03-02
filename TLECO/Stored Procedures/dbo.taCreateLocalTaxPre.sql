SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateLocalTaxPre]  @I_vLOCALTAX char(6) output,   @I_vDSCRIPTN char(30) output,   @I_vLCLTXCAL_1 smallint output,   @I_vLCLTXCAL_2 smallint output,   @I_vLCLTXCAL_3 smallint output,   @I_vLCLTXCAL_4 smallint output,   @I_vLCLTXCAL_5 smallint output,   @I_vEXMTAMNT numeric(19,5) output,  @I_vMNTXBLWG numeric(19,5) output,  @I_vMYTDTXWG numeric(19,5) output,  @I_vLCLTAXRT numeric(19,5) output,   @I_vLCLTXAMT numeric(19,5) output,  @I_vMAXPERYR numeric(19,5) output,  @I_vINACTIVE tinyint output,   @I_vSTDDMTHD smallint output,   @I_vSTDDPCNT numeric(19,5) output,   @I_VSTDDEDAM numeric(19,5) output,  @I_vSTDEDMAX numeric(19,5) output,  @I_vSTDEDMIN numeric(19,5) output,  @I_vTAXTYPE smallint output,   @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateLocalTaxPre] TO [DYNGRP]
GO
