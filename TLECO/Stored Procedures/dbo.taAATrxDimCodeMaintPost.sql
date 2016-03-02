SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taAATrxDimCodeMaintPost]  @I_vaaTrxDim char(30),    @I_vaaTrxDimCode char(30),   @I_vNOTETEXT varchar(8000),   @I_vINACTIVE smallint,    @I_vaaTrxDimCodeDescr char(50),   @I_vaaTrxDimCodeDescr2 char(50),  @I_vaaNode char(50),     @I_vaaOwnedBy char(30),    @I_vaaUDFText1 varchar(31),    @I_vaaUDFText2 varchar(31),   @I_vaaUDFText3 varchar(31),    @I_vaaUDFText4 varchar(31),    @I_vaaUDFText5 varchar(31),    @I_vaaUDFDate1 datetime,    @I_vaaUDFDate2 datetime,    @I_vaaUDFDate3 datetime,    @I_vaaUDFDate4 datetime,    @I_vaaUDFDate5 datetime,    @I_vaaUDFNumeric1 numeric(12,5),  @I_vaaUDFNumeric2 numeric(12,5),  @I_vaaUDFNumeric3 numeric(12,5),  @I_vaaUDFNumeric4 numeric(12,5),  @I_vaaUDFNumeric5 numeric(12,5),  @I_vaaUDFBoolean1 tinyint,    @I_vaaUDFBoolean2 tinyint,    @I_vaaUDFBoolean3 tinyint,    @I_vaaUDFBoolean4 tinyint,    @I_vaaUDFBoolean5 tinyint,    @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,   @oErrString varchar(255) output   as set nocount on select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taAATrxDimCodeMaintPost] TO [DYNGRP]
GO
