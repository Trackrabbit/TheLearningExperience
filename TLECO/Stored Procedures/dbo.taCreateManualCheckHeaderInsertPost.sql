SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateManualCheckHeaderInsertPost]  @I_vMLCHKTYP smallint,    @I_vPYADNMBR int,    @I_vBACHNUMB char(15),    @I_vCHEKBKID char(15),    @I_vCHEKNMBR char(20),    @I_vPOSTEDDT datetime,    @I_vEMPLOYID char(15),    @I_vUSEGPPYADNMBR int,    @I_vRequesterTrx smallint,   @I_vUSERID char(15),    @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateManualCheckHeaderInsertPost] TO [DYNGRP]
GO
