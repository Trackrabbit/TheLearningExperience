SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateBookIDPre]  @I_vBOOKID char(15) output,   @I_vBOOKDESC char(30) output,  @I_vDEPRPERIOD smallint output,  @I_vCURRFISCALYR smallint output,  @I_vAuto_Add_Book_Info tinyint output,  @I_vUSRDEFND1   char(50) output,  @I_vUSRDEFND2  char(50) output,  @I_vUSRDEFND3  char(50) output,  @I_vUSRDEFND4  varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateBookIDPre] TO [DYNGRP]
GO
