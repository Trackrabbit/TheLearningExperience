SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprDropTempFedTax]  @IN_FileType int,  @IN_UserID varchar(15)  as  if @IN_FileType  = 1  delete from ##TempFedTax  where USERID = @IN_UserID else if  @IN_FileType  = 2  delete from ##TempBenefitFedTax  where USERID = @IN_UserID else if @IN_FileType  = 3  delete from ##TempDeductFedTax  where USERID = @IN_UserID else  delete from ##Temp941EIC  where USERID = @IN_UserID  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprDropTempFedTax] TO [DYNGRP]
GO
