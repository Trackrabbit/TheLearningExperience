SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVCreateUOFMScheduleLinePre]  @I_vUOMSCHDL  char(10) output,   @I_vUOFM char(8) output,   @I_vEQUIVUOM char(8) output,   @I_vEQUOMQTY numeric (19,5) output,   @I_vUOFMLONGDESC char(254) output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1   char(50) output,  @I_vUSRDEFND2  char(50) output,  @I_vUSRDEFND3  char(50) output,  @I_vUSRDEFND4  varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVCreateUOFMScheduleLinePre] TO [DYNGRP]
GO
