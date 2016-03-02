SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateLockboxPost]  @I_vLockboxID char(15),    @I_vLockboxDescription char(30),  @I_vCHEKBKID char(15),    @I_vSTRGA255 char(255),        @I_vpaLockboxFormatType smallint,  @I_vXPRTFTYP smallint,    @I_vDECPLCUR smallint,    @I_vpaApplyMethod smallint,   @I_vOmitStartRecords int,   @I_vOmitLastRecords int,   @I_vpaHeaderRowIndicator char(10),  @I_vpaDeailRowIndicator char(10),  @I_vCREATDDT datetime,    @I_vMODIFDT datetime,     @I_vUSRDEFND1 char(50),        @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateLockboxPost] TO [DYNGRP]
GO
