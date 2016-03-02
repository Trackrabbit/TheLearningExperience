SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSServiceCallLinePost]   @I_vSRVRECTYPE smallint,    @I_vCALLNBR char(11),     @I_vEQPLINE int,     @I_vLNITMSEQ int,     @I_vLINITMTYP char(3),     @I_vSRVSTAT char(3),     @I_vTECHID char(11),     @I_vCUSTNMBR char (15),     @I_vADRSCODE char(15),     @I_vITEMNMBR char(31),     @I_vCKNORETURNS smallint,    @I_vITEMDESC char(101),     @I_vLOCNCODE char(11),     @I_vUOFM char(9),     @I_vQTYORDER numeric(19, 5),    @I_vATYALLOC numeric(19, 5),    @I_vQTYBACKO numeric(19, 5),    @I_vQTYSOLD numeric(19, 5),    @I_vUNITCOST numeric(19, 5),    @I_vUNITPRCE numeric(19, 5),    @I_vXTNDPRCE numeric(19, 5),    @I_vNOTETXT varchar(8000),    @I_vSTRTDATE datetime,      @I_vSTRTTIME datetime,     @I_vENDDATE datetime,      @I_vENDTME datetime,     @I_vTRANSTME numeric(10,2),    @I_vBILLABLTIM numeric(10,2),    @I_vENTDTE datetime,     @I_vENTTME datetime,     @I_vLABPCT numeric(19, 5),    @I_vPARTPCT numeric(19, 5),     @I_vMISCPCT numeric(19, 5),     @I_vCKCREATEPO smallint,    @I_vVENDORID char(15),     @I_vMiles_Start int,     @I_vMiles_End int,     @I_vMiles_Used int,     @I_vPRICELVL char(15),     @I_vSVC_Address_Option smallint,    @I_vSVC_Misc_Address_Code char(15),    @I_vSVC_Disable_XFR_Grouping tinyint,    @I_vWork_Type char(11),     @I_vSVC_FO_ID char(51),     @I_vCURNCYID char(15),     @I_vNonInventory smallint,    @I_vCreate_Overtime_Labor smallint,   @I_vOvertime_Labor_Item_Number char(31),   @I_vUpdateIfExists tinyint,    @I_vRequesterTrx smallint,    @I_vUSRDEFND1  char(50),    @I_vUSRDEFND2  char(50),      @I_vUSRDEFND3  char(50),    @I_vUSRDEFND4  varchar(8000),    @I_vUSRDEFND5  varchar(8000),    @O_iErrorState int output,    @oErrString varchar(255) output    as  set nocount on  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSServiceCallLinePost] TO [DYNGRP]
GO