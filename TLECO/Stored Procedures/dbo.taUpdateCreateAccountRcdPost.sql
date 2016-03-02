SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taUpdateCreateAccountRcdPost]  @I_vACTNUMST char(75),   @I_vACTALIAS char(21),   @I_vACCTTYPE smallint,   @I_vACTDESCR char(50),   @I_vPSTNGTYP smallint,   @I_vCATEGORY char(50),   @I_vACTIVE tinyint,   @I_vTPCLBLNC smallint,   @I_vDECPLACS smallint,   @I_vFXDORVAR smallint,   @I_vBALFRCLC smallint,   @I_vUSERDEF1 char(20),   @I_vUSERDEF2 char(20),   @I_vPostSlsIn smallint,   @I_vPostIvIn smallint,   @I_vPostPurchIn smallint,  @I_vPostPRIn smallint,   @I_vACCTENTR tinyint,   @I_vUSRDEFS1 char(30),   @I_vUSRDEFS2 char(30),   @I_vUpdateIfExists tinyint,  @I_vNOTETEXT varchar(8000),  @I_vDSPLKUPSSALES tinyint,  @I_vDSPLKUPSIV tinyint,   @I_vDSPLKUPSPURCH tinyint,  @I_vDSPLKUPSPR tinyint,   @I_vRequesterTrx smallint,  @I_vUSRDEFND1 char(50),   @I_vUSRDEFND2 char(50),   @I_vUSRDEFND3 char(50),   @I_vUSRDEFND4 varchar(8000),  @I_vUSRDEFND5 varchar(8000),  @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taUpdateCreateAccountRcdPost] TO [DYNGRP]
GO
