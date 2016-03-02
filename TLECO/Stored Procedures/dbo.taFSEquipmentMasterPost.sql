SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSEquipmentMasterPost]  @I_vSERLNMBR char(21),   @I_vITEMNMBR char(31),   @I_vREFRENCE char(31),   @I_vVersion char(21),   @I_vSRLSTAT char(11),   @I_vCUSTNMBR char(15),   @I_vADRSCODE char(15),   @I_vADDRESS1 char(61),   @I_vADDRESS2 char(61),   @I_vADDRESS3 char(61),   @I_vCITY char(35),   @I_vSTATE char(29),   @I_vZIP char(11),   @I_vCOUNTRY char(61),   @I_vCNTCPRSN char(61),   @I_vINSTDTE datetime,   @I_vShipped_Date datetime,  @I_vSVC_Register_Date datetime,  @I_vLSTPMDTE datetime,   @I_vLSTSRVDTE datetime,   @I_vTECHID char(11),   @I_vOFFID char(11),   @I_vSVCAREA char(11),   @I_vTIMEZONE char(3),   @I_vVENDORID char(15),   @I_vWARRCDE char(11),   @I_vWARRSTART datetime,   @I_vWARREND datetime,   @I_vSLRWARR char(11),    @I_vSLRWSTART datetime,   @I_vSLRWEND datetime,   @I_vNOTETXT nvarchar(2000),  @I_vSVC_PM_Date smallint,  @I_vSVC_PM_Day smallint,  @I_vUSERDEF1 char(21),   @I_vUSERDEF2 char(21),   @I_vUSRDEF03 char(21),   @I_vUSRDEF04 char(21),   @I_vUSRDEF05 char(21),   @I_vSVC_Serial_ID char(21),  @I_vSVC_Asset_Tag char(21),  @I_vUpdateIfExists tinyint,  @I_vRequesterTrx smallint,  @I_vUSRDEFND1 char(50),   @I_vUSRDEFND2 char(50),   @I_vUSRDEFND3 char(50),   @I_vUSRDEFND4 varchar(8000),  @I_vUSRDEFND5 varchar(8000),  @O_iErrorState int = null output, @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSEquipmentMasterPost] TO [DYNGRP]
GO
