SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taUpdateCreateAccountRcdPre]  @I_vACTNUMST char(75) output,   @I_vACTALIAS char(21) output,   @I_vACCTTYPE smallint output,   @I_vACTDESCR char(50) output,   @I_vPSTNGTYP smallint output,   @I_vCATEGORY char(50) output,   @I_vACTIVE tinyint output,   @I_vTPCLBLNC smallint output,   @I_vDECPLACS smallint output,   @I_vFXDORVAR smallint output,   @I_vBALFRCLC smallint output,   @I_vUSERDEF1 char(20) output,   @I_vUSERDEF2 char(20) output,   @I_vPostSlsIn smallint output,   @I_vPostIvIn smallint output,   @I_vPostPurchIn smallint output,  @I_vPostPRIn smallint output,   @I_vACCTENTR tinyint output,   @I_vUSRDEFS1 char(30) output,   @I_vUSRDEFS2 char(30) output,   @I_vUpdateIfExists tinyint output,  @I_vNOTETEXT varchar(8000) output,  @I_vDSPLKUPSSALES tinyint output,  @I_vDSPLKUPSIV tinyint output,   @I_vDSPLKUPSPURCH tinyint output,  @I_vDSPLKUPSPR tinyint output,   @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taUpdateCreateAccountRcdPre] TO [DYNGRP]
GO
