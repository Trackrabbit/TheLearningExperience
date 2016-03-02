SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreatePayCodePost]  @I_vPAYRCORD char(6),    @I_vDSCRIPTN char(30),    @I_vINACTIVE tinyint,    @I_vPAYTYPE smallint,     @I_vBSPAYRCD char(6),    @I_vPAYRTAMT numeric(19,5),   @I_vPAYUNIT char(25),    @I_vPAYUNPER smallint,     @I_vPAYPEROD smallint,     @I_vMXPYPPER numeric(19,5),   @I_vTipType smallint,    @I_vPAYADVNC numeric(19,5),   @I_vRPTASWGS tinyint,    @I_vW2BXNMBR smallint,    @I_vW2BXLABL char(6),    @I_vW2BXNMBR2 smallint,    @I_vW2BXLABL2 char(6),    @I_vW2BXNMBR3 smallint,   @I_vW2BXLABL3 char(6),    @I_vW2BXNMBR4 smallint,   @I_vW2BXLABL4 char(6),    @I_vSBJTFDTX tinyint,    @I_vSBJTSSEC tinyint,    @I_vSBJTMCAR tinyint,    @I_vSBJTSTTX tinyint,    @I_vSBJTLTAX tinyint,    @I_vSBJTFUTA tinyint,    @I_vSBJTSUTA tinyint,    @I_vFFEDTXRT numeric(19,5),   @I_vFLSTTXRT numeric(19,5),   @I_vACRUVACN tinyint,    @I_vACRUSTIM tinyint,    @I_vDATAENTDFLT tinyint,   @I_vSHFTCODE char(6),    @I_vPAYFACTR numeric(19,5),   @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreatePayCodePost] TO [DYNGRP]
GO
