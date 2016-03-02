SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAccountCurrenciesPre]  @I_vAccount_Number char(75) output,  @I_vCURNCYID char(15) output,  @I_vREVALUE tinyint output,    @I_vREVLUHOW smallint output,  @I_vPost_Results_To smallint output,  @I_vUSRDEFND1   char(50) output,  @I_vUSRDEFND2  char(50) output,  @I_vUSRDEFND3  char(50) output,  @I_vUSRDEFND4  varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAccountCurrenciesPre] TO [DYNGRP]
GO
