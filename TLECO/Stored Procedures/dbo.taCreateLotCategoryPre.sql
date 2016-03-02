SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateLotCategoryPre]  @I_vLOTTYPE char(10) output,  @I_vLTATRDSC_1 char(15) output,  @I_vLTATRDSC_2 char(15) output,    @I_vLTATRDSC_3 char(15) output,    @I_vLTATRDSC_4 char(15) output,    @I_vLTATRDSC_5 char(15) output,    @I_vRequesterTrx smallint output,  @I_vUSRDEFND1   char(50) output,  @I_vUSRDEFND2  char(50) output,  @I_vUSRDEFND3  char(50) output,  @I_vUSRDEFND4  varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateLotCategoryPre] TO [DYNGRP]
GO
