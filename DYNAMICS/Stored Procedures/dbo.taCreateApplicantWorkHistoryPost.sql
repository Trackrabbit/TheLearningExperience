SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateApplicantWorkHistoryPost]  @I_vLLASTNAME_I char(21),     @I_vFFIRSTNAME_I char(15),     @I_vNAME char(31),       @I_vAPPLICANTNUMBER_I numeric(19,5),   @I_vISEQUENCENUMBER_I smallint,    @I_vWAGE_I numeric(19,5),     @I_vCOMPENSATIONPERIOD_I smallint,    @I_vPOSITION_I char(31),     @I_vSTRTDATE datetime,      @I_vENDDATE datetime,      @I_vYEARSOFEXP_I char(3),     @I_vNOTE varchar(8000),       @I_vCHANGEBY_I char(15),     @I_vUpdateIfExists tinyint,     @I_vRequesterTrx smallint ,     @I_vUSRDEFND1 char(50),      @I_vUSRDEFND2 char(50),         @I_vUSRDEFND3 char(50),         @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,     @oErrString varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateApplicantWorkHistoryPost] TO [DYNGRP]
GO
