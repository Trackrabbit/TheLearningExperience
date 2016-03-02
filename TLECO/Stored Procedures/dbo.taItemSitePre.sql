SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taItemSitePre]  @I_vITEMNMBR char(30) output,   @I_vLOCNCODE char(10) output,   @I_vBINNMBR char(20) output,   @I_vPRIMVNDR char(15) output,   @I_vLanded_Cost_Group_ID char(15) output,  @I_vQTYRQSTN numeric(19,5) output,   @I_vUpdateIfExists tinyint=1 output,   @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,      @I_vUSRDEFND3 char(50) output,      @I_vUSRDEFND4 varchar(8000) output,      @I_vUSRDEFND5 varchar(8000) output,      @O_iErrorState int output,    @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taItemSitePre] TO [DYNGRP]
GO
