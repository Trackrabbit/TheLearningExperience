SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateCustomerItemsPost]  @I_vITEMNMBR char(30),    @I_vCUSTNMBR char(15),   @I_vCUSTITEMNMBR char(30),   @I_vCUSTITEMDESC char(50),   @I_vCUSTITEMSHORNAME  char(15),   @I_vCUSTITEMGENERICDESC char(10),   @I_vUSERDEF1 char(20),   @I_vUSERDEF2 char(20),   @I_vUSRDEF03 char(20),   @I_vUSRDEF04 char(20),   @I_vUSRDEF05 char(20),   @I_vSUBITEMNMBR char(30),   @I_vSTRTDATE datetime,   @I_vENDDATE datetime,   @I_vRequesterTrx  smallint,   @I_vUSRDEFND1    char(50),       @I_vUSRDEFND2   char(50),       @I_vUSRDEFND3   char(50),       @I_vUSRDEFND4   varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString   varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateCustomerItemsPost] TO [DYNGRP]
GO
