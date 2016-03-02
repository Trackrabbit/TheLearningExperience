SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSRTVMasterPost]  @I_vRTV_Number char(15),   @I_vRTV_Type char(11),    @I_vRTV_Return_Status char(3) = null,  @I_vVRMA_Document_ID char(15),   @I_vRETDOCID char(15),    @I_vDSCRIPTN char(31),    @I_vVENDORID char(15),    @I_vVENDNAME char(65),    @I_vCKHOLD smallint,    @I_vADRSCODE char(15),    @I_vShip_Address_Name char(65),   @I_vShip_Address_1 char(61),   @I_vShip_Address_2 char(61),   @I_vShip_Address_3 char(61),   @I_vShip_City char(35),    @I_vShip_State char(29),   @I_vZIPCODE char(11),    @I_vShip_Country char(61),   @I_vENTDTE datetime,    @I_vENTTME datetime,    @I_vLOCCODEB char(11),    @I_vLOCNCODE char(11),    @I_vBill_of_Lading_Out char(31),  @I_vShipping_Method_Out char(15),  @I_vBill_of_Lading char(31),   @I_vSHIPMTHD char(15),    @I_vOFFID char(11),    @I_vNOTETXT nvarchar(2000),    @I_vUSERID char(15),    @I_vUSERDEF1 char(21),    @I_vUSERDEF2 char(21),    @I_vUSRDEF03 char(21),    @I_vUSRDEF04 char(21),    @I_vUSRDEF05 char(21),    @I_vCURNCYID char(15),    @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int = NULL output, @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSRTVMasterPost] TO [DYNGRP]
GO
