SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVCreateItemPriceListLinePre]  @I_vITEMNMBR  char(30) output,   @I_vCURNCYID char(15) output,  @I_vPRCLEVEL  char(10) output,  @I_vUOFM char(8) output,   @I_vTOQTY numeric(19,5) output,   @I_vUOMPRICE numeric(19,5) output,  @I_vRNDGAMNT numeric(19,5) output,  @I_vROUNDHOW smallint output,  @I_vROUNDTO smallint output,  @I_vUMSLSOPT smallint output,  @I_vUpdateIfExists smallint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1   char(50) output,  @I_vUSRDEFND2  char(50) output,  @I_vUSRDEFND3  char(50) output,  @I_vUSRDEFND4  varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVCreateItemPriceListLinePre] TO [DYNGRP]
GO
