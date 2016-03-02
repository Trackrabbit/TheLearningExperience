SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taAATrxDimCodeMaintPre]  @I_vaaTrxDim char(30) output,   @I_vaaTrxDimCode char(30) output,  @I_vNOTETEXT varchar(8000) output,  @I_vINACTIVE smallint output,   @I_vaaTrxDimCodeDescr char(50) output,  @I_vaaTrxDimCodeDescr2 char(50) output,  @I_vaaNode char(50) output,    @I_vaaOwnedBy char(30) output,   @I_vaaUDFText1 varchar(31) output,   @I_vaaUDFText2 varchar(31) output,  @I_vaaUDFText3 varchar(31) output,   @I_vaaUDFText4 varchar(31) output,   @I_vaaUDFText5 varchar(31) output,   @I_vaaUDFDate1 datetime output,   @I_vaaUDFDate2 datetime output,   @I_vaaUDFDate3 datetime output,   @I_vaaUDFDate4 datetime output,   @I_vaaUDFDate5 datetime output,   @I_vaaUDFNumeric1 numeric(12,5) output,  @I_vaaUDFNumeric2 numeric(12,5) output,  @I_vaaUDFNumeric3 numeric(12,5) output,  @I_vaaUDFNumeric4 numeric(12,5) output,  @I_vaaUDFNumeric5 numeric(12,5) output,  @I_vaaUDFBoolean1 tinyint output,   @I_vaaUDFBoolean2 tinyint output,   @I_vaaUDFBoolean3 tinyint output,   @I_vaaUDFBoolean4 tinyint output,   @I_vaaUDFBoolean5 tinyint output,   @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output   as set nocount on select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taAATrxDimCodeMaintPre] TO [DYNGRP]
GO
