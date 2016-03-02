SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[fnvGeteConnectErrorMessage] 
( 
    @eConnectErrorString nvarchar(255) 
) 
RETURNS nvarchar(max) 
AS 
BEGIN 
    DECLARE @ErrorString nvarchar(255) 
    DECLARE @ErrorMessage nvarchar(max) 
    DECLARE @DelimiterIndex int 
    DECLARE @CurrentErrorCode nvarchar(10) 
    DECLARE @CRLF nvarchar(2)

--Initialize variables 
    SET @CRLF = CHAR(13) + CHAR(10) 
    SET @ErrorString = @eConnectErrorString 
    SET @ErrorMessage = 'The following error(s) were returned:' + @CRLF + @CRLF 
    SET @ErrorString = LTRIM(RTRIM(@ErrorString))

--If no errors then return empty string 
    IF LEN(@ErrorString) = 0 
    BEGIN 
        RETURN N'' 
    END

--Find first delimiter 
    SET @DelimiterIndex = CHARINDEX(' ', @ErrorString, 0) 
    IF @DelimiterIndex = 0 
    BEGIN 
--If no delimiter, return entire string 
        SET @CurrentErrorCode = @ErrorString 
    END 
    ELSE 
    BEGIN 
--If delimiter found, set current error code to first error code in string 
        SET @CurrentErrorCode = SUBSTRING(@ErrorString, 1, (@DelimiterIndex - 1)) 
    END

--Loop until there are no error codes remaining 
    WHILE LEN(@CurrentErrorCode) > 0 
    BEGIN 
--Return error stored procedure and message and append to error message to be returned 
        SELECT 
                @ErrorMessage = @ErrorMessage + 'Source procedure - ' + ISNULL(SourceProc, '') 
                    + @CRLF + 'Error - ' + ISNULL(ErrorDesc, '') + @CRLF + @CRLF
            FROM DYNAMICS.dbo.taErrorCode 
            WHERE ErrorCode = @CurrentErrorCode

--Remove current error code from string and get next error code 
        SET @ErrorString = RTRIM(LTRIM(SUBSTRING(@ErrorString, (LEN(@CurrentErrorCode) + 1), (LEN(@ErrorString) - LEN(@CurrentErrorCode))))) 
        SET @DelimiterIndex = CHARINDEX(' ', @ErrorString, 0) 
        IF @DelimiterIndex = 0 
        BEGIN 
            SET @CurrentErrorCode = @ErrorString 
        END 
        ELSE 
        BEGIN 
            SET @CurrentErrorCode = SUBSTRING(@ErrorString, 1, (@DelimiterIndex - 1)) 
        END 
    END

    -- Return the result of the function 
    RETURN @ErrorMessage 
END
GO
