SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taRMDistributionPre]   @I_vRMDTYPAL smallint output,   @I_vDOCNUMBR char(20) output,   @I_vCUSTNMBR char(15) output,   @I_vSEQNUMBR int output,    @I_vDISTTYPE smallint output,   @I_vDistRef char(30) output,   @I_vDSTINDX int output,    @I_vACTNUMST varchar(75) output,  @I_vDEBITAMT numeric(19,5) output,  @I_vCRDTAMNT numeric(19,5) output,  @I_vUSRDEFND1 char(50) output,       @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taRMDistributionPre] TO [DYNGRP]
GO
