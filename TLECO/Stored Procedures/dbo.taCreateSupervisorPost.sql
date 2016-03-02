SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateSupervisorPost]  @I_vSUPERVISORCODE_I char(6),   @I_vSUPERVISOR char(30),   @I_vEMPLOYID char(15),    @I_vCHANGEBY_I char(15),   @I_vCHANGEDATE_I datetime,   @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint ,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateSupervisorPost] TO [DYNGRP]
GO
