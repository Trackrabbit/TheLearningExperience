SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[NDS_UDF_CreateAddrLbl] (@FirstName varchar(51), @MiddleName varchar(51), @LastName varchar(51), @Addr1 varchar(31), 
                                       @Addr2 varchar(31), @Addr3 varchar(31), @city varchar(51), @state varchar(31), @zip varchar(11), @country varchar(51))
  RETURNS nvarchar(255)
 AS 
BEGIN
  DECLARE @addrLbl AS nvarchar(255), @newLine char(2)
  SET @newLine = char(13) + char(10)
  SET @addrLbl = '    ' + RTRIM(@FirstName) + ' ' + RTRIM(@MiddleName) + ' ' + RTRIM(@LastName) + @newLine
  SET @addrLbl = @addrLbl + '    ' + RTRIM(@Addr1) + @newLine
  IF (RTRIM(@Addr2) <> '')
  BEGIN
    SET @addrLbl = @addrLbl + '    ' + RTRIM(@Addr2) + @newLine
  END
  SET @addrLbl = @addrLbl + '    ' + RTRIM(@city) + ', ' + RTRIM(@state) + ' ' + RTRIM(@zip) + @newLine
  
  RETURN @addrLbl
END
GO
GRANT EXECUTE ON  [dbo].[NDS_UDF_CreateAddrLbl] TO [DYNGRP]
GO
