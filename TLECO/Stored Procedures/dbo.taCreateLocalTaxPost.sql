SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateLocalTaxPost]  @I_vLOCALTAX char(6),    @I_vDSCRIPTN char(30),    @I_vLCLTXCAL_1 smallint,   @I_vLCLTXCAL_2 smallint,   @I_vLCLTXCAL_3 smallint,   @I_vLCLTXCAL_4 smallint,   @I_vLCLTXCAL_5 smallint,   @I_vEXMTAMNT numeric(19,5),   @I_vMNTXBLWG numeric(19,5),   @I_vMYTDTXWG numeric(19,5),   @I_vLCLTAXRT numeric(19,5),    @I_vLCLTXAMT numeric(19,5),   @I_vMAXPERYR numeric(19,5),   @I_vINACTIVE tinyint,    @I_vSTDDMTHD smallint,    @I_vSTDDPCNT numeric(19,5),    @I_VSTDDEDAM numeric(19,5),   @I_vSTDEDMAX numeric(19,5),   @I_vSTDEDMIN numeric(19,5),   @I_vTAXTYPE smallint,    @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateLocalTaxPost] TO [DYNGRP]
GO
