SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create PROC [dbo].[MSO_Encryption] (@CCNum varchar(21), @CCCrypt char(165) output, @CCObf char(21) output) 
 as
 begin
  declare @Key char(21), @Site char (81), @Src smallint
  declare @Major smallint, @Minor smallint, @Build smallint, @Exp datetime
  exec DYNAMICS..xp_NodusEncrypt @CCNum, @CCCrypt OUTPUT, @CCObf OUTPUT
  if @CCCrypt is null
  begin
  	select @Site = SITENAME from DYNAMICS.dbo.SY03500
  	-- Check if CCA is registered
 		if exists (select * from DYNAMICS .dbo.sysobjects where name = 'MS273599' and type ='U')
  	begin
  		select top 1 @Key = ME_Key_Array_10
  				   , @Src = ME_Verification_Source
  				   , @Major = ME_Major_Version
  				   , @Minor = ME_Minor_Version
  				   , @Build = ME_Build_Version
  				   , @Exp = ME_Key_Expiration_Date
  			from DYNAMICS.dbo.MS273599
  		exec DYNAMICS..xp_NodusEncrypt @CCNum, @CCCrypt OUTPUT, @CCObf OUTPUT
  	end
  end
  if @CCCrypt is null
  begin
  	-- Check if CCE is registered
 		if exists (select * from DYNAMICS.dbo.sysobjects where name = 'MSO_Registration_CCE' and type ='U')
  	begin
  		select top 1 @Key = ME_Key_Array_10
  				   , @Src = ME_Verification_Source
  				   , @Major = ME_Major_Version
  				   , @Minor = ME_Minor_Version
  				   , @Build = ME_Build_Version
  				   , @Exp = ME_Key_Expiration_Date
  			from DYNAMICS.dbo.MSO_Registration_CCE
  		exec DYNAMICS..xp_NodusEncrypt @CCNum, @CCCrypt OUTPUT, @CCObf OUTPUT
  	end
  end
 end
GO
GRANT EXECUTE ON  [dbo].[MSO_Encryption] TO [DYNGRP]
GO
