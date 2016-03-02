SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[AddGPSSQLErrorCode]  @cName char(30),  @cText char(255) as  declare @iCode int  begin transaction  select   @iCode = max(CODE) + 1 from  GPS_SQL_Error_Codes with (UPDLOCK)  insert into  GPS_SQL_Error_Codes  values (  0,          @iCode,  @cName,  @cText)  select @iCode commit transaction    
GO
GRANT EXECUTE ON  [dbo].[AddGPSSQLErrorCode] TO [DYNGRP]
GO
