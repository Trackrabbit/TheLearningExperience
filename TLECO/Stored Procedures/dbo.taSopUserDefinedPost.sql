SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopUserDefinedPost]  @I_vSOPTYPE smallint,    @I_vSOPNUMBE char(21),     @I_vUSRDAT01 datetime,    @I_vUSRDAT02 datetime,    @I_vUSRTAB01 char(20),    @I_vUSRTAB09 char(20),    @I_vUSRTAB03 char(20),    @I_vUSERDEF1 char(20),    @I_vUSERDEF2 char(20),    @I_vUSRDEF03 char(20),    @I_vUSRDEF04 char(20),    @I_vUSRDEF05 char(20),    @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopUserDefinedPost] TO [DYNGRP]
GO
