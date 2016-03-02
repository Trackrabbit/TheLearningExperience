SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aaRemoveHistory]  @IN_DATE_FLAG   BIT,  @YEAR1    SMALLINT,  @S_DATE DATETIME,  @E_DATE DATETIME,  @S_ACCOUNTNUMBER CHAR(130),  @E_ACCOUNTNUMBER CHAR(130),   @O_SQL_ERROR_STATE  INT   = NULL OUTPUT AS BEGIN  SET NOCOUNT ON   DECLARE @S_ACTNMBR VARCHAR(60)    DECLARE @E_ACTNMBR VARCHAR(60)    DECLARE @S_ACTNUMBR CHAR(9)    DECLARE @E_ACTNUMBR CHAR(9)    DECLARE @LEN_SEG SMALLINT    DECLARE @OLDLEN_SEG SMALLINT   DECLARE @FLTRACTNMB VARCHAR(2000)   DECLARE @ACTSEGSEP CHAR(4)    DECLARE @aaGLHdrID INT     DECLARE @aaGLDistID INT     DECLARE @ACTINDX INT     DECLARE @L_TEMPACTINDX INT      DECLARE @SGMTNUMB SMALLINT    SELECT @ACTSEGSEP = ACSEGSEP FROM DYNAMICS..SY01500 WHERE INTERID = DB_NAME()   SET @S_ACTNMBR = REPLACE(@S_ACCOUNTNUMBER,@ACTSEGSEP,'')   SET @E_ACTNMBR = REPLACE(@E_ACCOUNTNUMBER,@ACTSEGSEP,'')   SET @OLDLEN_SEG = 0  SET @FLTRACTNMB = '1 = 1'   IF LEN(RTRIM(@S_ACTNMBR)) <> 0   BEGIN  DECLARE CURTEMPTABLE CURSOR FAST_FORWARD FOR  SELECT SGMTNUMB, LOFSGMNT FROM SY00300  OPEN CURTEMPTABLE  FETCH NEXT FROM CURTEMPTABLE INTO @SGMTNUMB, @LEN_SEG  WHILE @@fetch_status = 0  BEGIN  SET @S_ACTNUMBR = SUBSTRING(@S_ACTNMBR,1 + @OLDLEN_SEG,@LEN_SEG)  SET @E_ACTNUMBR = SUBSTRING(@E_ACTNMBR,1 + @OLDLEN_SEG,@LEN_SEG)    SET @FLTRACTNMB = @FLTRACTNMB + ' AND ' + '(ACTNUMBR_' + CONVERT(VARCHAR(2),@SGMTNUMB) + ' BETWEEN ''' +   RTRIM(CONVERT(VARCHAR(70),@S_ACTNUMBR)) + ''' AND ''' +   RTRIM(CONVERT(VARCHAR(70),@E_ACTNUMBR)) + ''' )'   SET @OLDLEN_SEG = @OLDLEN_SEG + @LEN_SEG  FETCH NEXT FROM CURTEMPTABLE INTO @SGMTNUMB, @LEN_SEG  END  CLOSE CURTEMPTABLE  DEALLOCATE CURTEMPTABLE  END  IF @IN_DATE_FLAG = 1   BEGIN  DECLARE CURaaGLHdrID CURSOR FAST_FORWARD FOR  SELECT aaGLHdrID FROM AAG40000 WHERE YEAR1 = @YEAR1 AND GLPOSTDT BETWEEN @S_DATE AND @E_DATE  END  ELSE  BEGIN  DECLARE CURaaGLHdrID CURSOR FAST_FORWARD FOR  SELECT aaGLHdrID FROM AAG40000 WHERE YEAR1 = @YEAR1   END   OPEN CURaaGLHdrID  FETCH NEXT FROM CURaaGLHdrID INTO @aaGLHdrID  WHILE @@fetch_status = 0  BEGIN  IF LEN(RTRIM(@S_ACTNMBR)) = 0  BEGIN   DELETE FROM AAG40001 WHERE aaGLHdrID = @aaGLHdrID  DELETE FROM AAG40002 WHERE aaGLHdrID = @aaGLHdrID  DELETE FROM AAG40003 WHERE aaGLHdrID = @aaGLHdrID  END  ELSE  BEGIN  EXEC ('DECLARE CURACTINDX CURSOR FAST_FORWARD FOR   SELECT ACTINDX FROM GL00105 WHERE (' + @FLTRACTNMB + ')')  OPEN CURACTINDX  FETCH NEXT FROM CURACTINDX INTO @ACTINDX  WHILE @@fetch_status = 0  BEGIN   DECLARE CURTEMPACTINDX CURSOR FAST_FORWARD FOR   SELECT ACTINDX FROM AAG40001 WHERE aaGLHdrID = @aaGLHdrID  OPEN CURTEMPACTINDX  FETCH NEXT FROM CURTEMPACTINDX INTO @L_TEMPACTINDX  WHILE @@fetch_status = 0  BEGIN   IF @L_TEMPACTINDX = @ACTINDX   BEGIN  DECLARE CURaaGLDistID CURSOR FAST_FORWARD FOR   SELECT aaGLDistID FROM AAG40001 WHERE aaGLHdrID = @aaGLHdrID AND ACTINDX = @L_TEMPACTINDX  OPEN CURaaGLDistID  FETCH NEXT FROM CURaaGLDistID INTO @aaGLDistID  WHILE @@fetch_status = 0  BEGIN  DELETE FROM AAG40002 WHERE aaGLHdrID = @aaGLHdrID AND aaGLDistID = @aaGLDistID  DELETE FROM AAG40003 WHERE aaGLHdrID = @aaGLHdrID AND aaGLDistID = @aaGLDistID  FETCH NEXT FROM CURaaGLDistID INTO @aaGLDistID  END  CLOSE CURaaGLDistID  DEALLOCATE CURaaGLDistID   DELETE FROM AAG40001 WHERE aaGLHdrID = @aaGLHdrID AND ACTINDX = @L_TEMPACTINDX  END   FETCH NEXT FROM CURTEMPACTINDX INTO @L_TEMPACTINDX  END  CLOSE CURTEMPACTINDX  DEALLOCATE CURTEMPACTINDX   FETCH NEXT FROM CURACTINDX INTO @ACTINDX  END  CLOSE CURACTINDX  DEALLOCATE CURACTINDX   END  IF NOT EXISTS (SELECT * FROM AAG40000 A  INNER JOIN AAG40001 A1 ON A.aaGLHdrID = A1.aaGLHdrID  WHERE A.aaGLHdrID = @aaGLHdrID)  BEGIN  DELETE FROM AAG40000 WHERE aaGLHdrID = @aaGLHdrID  END  FETCH NEXT FROM CURaaGLHdrID INTO @aaGLHdrID  END  CLOSE CURaaGLHdrID  DEALLOCATE CURaaGLHdrID   SET NOCOUNT OFF END    
GO
GRANT EXECUTE ON  [dbo].[aaRemoveHistory] TO [DYNGRP]
GO
