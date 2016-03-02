SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateShippingMethodPost]  @I_vSHIPMTHD char(15),   @I_vSHMTHDSC char(30),   @I_vPHONNAME char(14),   @I_vCONTACT char(60),   @I_vCARRACCT char(15),   @I_vCARRIER char(30),   @I_vSHIPTYPE smallint,   @I_vUpdateIfExists tinyint,   @I_vUSERID char(15),   @I_vCREATDDT datetime,   @I_vMODIFDT datetime,   @I_vNOTETEXT  varchar(8000),   @I_vUSRDEFND1   char(50),       @I_vUSRDEFND2  char(50),       @I_vUSRDEFND3  char(50),       @I_vUSRDEFND4  varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateShippingMethodPost] TO [DYNGRP]
GO
