SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopToPopLinkPost]   @I_vSOPTYPE smallint,   @I_vSOPNUMBE char(21),    @I_vVENDORID char(15),   @I_vDOCDATE datetime,    @I_vCURNCYID char(15),   @I_vSHIPMTHD char(15),   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),  @I_vUSRDEFND5 varchar(8000),  @O_iErrorState int output,  @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopToPopLinkPost] TO [DYNGRP]
GO
