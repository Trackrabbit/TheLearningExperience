SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE  PROC [dbo].[MSO_Decryption] ( @TableName char(49)
                            , @StringKey1 char(73), @StringKey2 char(73)
                            , @IntKey1 int, @IntKey2 int
							  , @CardNumber varchar(165) output) 
 as
 begin
  declare @Crypt varchar (165)
  select @Crypt = rtrim(MSO_CardNumberPABP) from MSO_CreditCard_MSTR
	where MSO_TableName  = @TableName
	  and MSO_StringKey1 = @StringKey1
	  and MSO_StringKey2 = @StringKey2
	  and MSO_IntKey1    = @IntKey1
	  and MSO_IntKey2    = @IntKey2
	if @Crypt is not null 
		exec DYNAMICS..xp_NodusDecrypt @Crypt, @CardNumber output
 end
GO
GRANT EXECUTE ON  [dbo].[MSO_Decryption] TO [DYNGRP]
GO
