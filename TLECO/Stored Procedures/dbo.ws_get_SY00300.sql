SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[ws_get_SY00300] 
( 
   @SGMTNUMB   smallint= NULL, 
   @SGMTNAME   char(15) = NULL, 
   @LOFSGMNT   smallint = NULL, 
   @MXLENSEG   smallint = NULL, 
   @USDFSGKY   smallint = NULL, 
   @MNSEGIND   tinyint = NULL, 
   @SegmentWidth   char(1) = NULL, 
   @DEX_ROW_ID   int = NULL, 
   @RETURNVALUE INT = NULL OUT 
) 
AS 
  
DECLARE @ERROR_VAR INT 
DECLARE @ROWCOUNT_VAR INT 
  
SELECT  
   [SGMTNUMB], 
   [SGMTNAME], 
   [LOFSGMNT], 
   [MXLENSEG], 
   [USDFSGKY], 
   [MNSEGIND], 
   [SegmentWidth], 
   [DEX_ROW_ID] 
FROM [dbo].[SY00300] 
WHERE 
   [SGMTNUMB] = case when @SGMTNUMB IS NULL then [SGMTNUMB] else @SGMTNUMB end AND 
   [SGMTNAME] = case when @SGMTNAME IS NULL then [SGMTNAME] else @SGMTNAME end AND 
   [LOFSGMNT] = case when @LOFSGMNT IS NULL then [LOFSGMNT] else @LOFSGMNT end AND 
   [MXLENSEG] = case when @MXLENSEG IS NULL then [MXLENSEG] else @MXLENSEG end AND 
   [USDFSGKY] = case when @USDFSGKY IS NULL then [USDFSGKY] else @USDFSGKY end AND 
   [MNSEGIND] = case when @MNSEGIND IS NULL then [MNSEGIND] else @MNSEGIND end AND 
   [SegmentWidth] = case when @SegmentWidth IS NULL then [SegmentWidth] else @SegmentWidth end AND 
   [DEX_ROW_ID] = case when @DEX_ROW_ID IS NULL then [DEX_ROW_ID] else @DEX_ROW_ID end 
  
SELECT @ERROR_VAR = @@ERROR,@ROWCOUNT_VAR=@@ROWCOUNT 
  
IF @ERROR_VAR = 0 AND @ROWCOUNT_VAR = 1 
   BEGIN 
      SET @RETURNVALUE = 0 
   END 
ELSE 
   BEGIN 
      IF @ERROR_VAR <> 0  
         SET @RETURNVALUE = @ERROR_VAR 
      ELSE 
         SET @RETURNVALUE =  -99 -- UNEXPECTED NR OF RECORDS AFFECTED 
   END 
  
GO
GRANT EXECUTE ON  [dbo].[ws_get_SY00300] TO [DYNGRP]
GO
