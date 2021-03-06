SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVCreateItemPriceListLinePost]  @I_vITEMNMBR char(30),    @I_vCURNCYID char(15),   @I_vPRCLEVEL  char(10),   @I_vUOFM char(8),   @I_vTOQTY numeric(19,5),    @I_vUOMPRICE numeric(19,5),   @I_vRNDGAMNT numeric(19,5),   @I_vROUNDHOW smallint=0,   @I_vROUNDTO smallint=1,   @I_vUMSLSOPT smallint,   @I_vUpdateIfExists smallint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1   char(50),       @I_vUSRDEFND2  char(50),       @I_vUSRDEFND3  char(50),       @I_vUSRDEFND4  varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVCreateItemPriceListLinePost] TO [DYNGRP]
GO
