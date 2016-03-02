SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetUserDataPre]  @I_vASSETID char(15) output,   @I_vASSETIDSUF smallint output,   @I_vUSRFIELD1 char(6) output,    @I_vUSRFIELD2 char(6) output,     @I_vUSRFIELD3 char(10) output,   @I_vUSRFIELD4  char(10) output,    @I_vUSRFIELD5 char(20) output,    @I_vUSRFIELD6   char(20) output,    @I_vUSRFIELD7   char(20) output,    @I_vUSRFIELD8   char(20) output,    @I_vUSRFIELD9   char(40) output,    @I_vUSRFIELD10  char(40) output,    @I_vUSRFIELD11  numeric(19,5) output,   @I_vUSRFIELD12  numeric(19,5) output,   @I_vUSRFIELD13  numeric(19,5) output,   @I_vUSRFIELD14  numeric(19,5) output,   @I_vUSRFIELD15  numeric(19,5) output,   @I_vUpdateIfExists tinyint output,   @I_vRequesterTrx smallint output,   @I_vUSRDEFND1   char(50) output,       @I_vUSRDEFND2  char(50) output,       @I_vUSRDEFND3  char(50) output,       @I_vUSRDEFND4  varchar(8000) output,       @I_vUSRDEFND5 varchar(8000) output,       @O_iErrorState int output,    @oErrString  varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetUserDataPre] TO [DYNGRP]
GO
