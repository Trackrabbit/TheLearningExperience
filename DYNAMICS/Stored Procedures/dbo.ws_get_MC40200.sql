SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[ws_get_MC40200] 
( 
   @CURNCYID   char(15)= NULL, 
   @CURRNIDX   smallint = NULL, 
   @NOTEINDX   numeric = NULL, 
   @CRNCYDSC   char(31) = NULL, 
   @CRNCYSYM   char(3) = NULL, 
   @CNYSYMAR_1   smallint = NULL, 
   @CNYSYMAR_2   smallint = NULL, 
   @CNYSYMAR_3   smallint = NULL, 
   @CYSYMPLC   smallint = NULL, 
   @INCLSPAC   tinyint = NULL, 
   @NEGSYMBL   smallint = NULL, 
   @NGSMAMPC   smallint = NULL, 
   @NEGSMPLC   smallint = NULL, 
   @DECSYMBL   smallint = NULL, 
   @DECPLCUR   smallint = NULL, 
   @THOUSSYM   smallint = NULL, 
   @CURTEXT_1   char(25) = NULL, 
   @CURTEXT_2   char(25) = NULL, 
   @CURTEXT_3   char(25) = NULL, 
   @ISOCURRC   char(3) = NULL, 
   @CURLNGID   smallint = NULL, 
   @DEX_ROW_ID   int = NULL, 
   @RETURNVALUE INT = NULL OUT 
) 
AS 
  
DECLARE @ERROR_VAR INT 
DECLARE @ROWCOUNT_VAR INT 
  
SELECT  
   [CURNCYID], 
   [CURRNIDX], 
   [NOTEINDX], 
   [CRNCYDSC], 
   [CRNCYSYM], 
   [CNYSYMAR_1], 
   [CNYSYMAR_2], 
   [CNYSYMAR_3], 
   [CYSYMPLC], 
   [INCLSPAC], 
   [NEGSYMBL], 
   [NGSMAMPC], 
   [NEGSMPLC], 
   [DECSYMBL], 
   [DECPLCUR], 
   [THOUSSYM], 
   [CURTEXT_1], 
   [CURTEXT_2], 
   [CURTEXT_3], 
   [ISOCURRC], 
   [CURLNGID], 
   [DEX_ROW_ID] 
FROM [dbo].[MC40200] 
WHERE 
   [CURNCYID] = case when @CURNCYID IS NULL then [CURNCYID] else @CURNCYID end AND 
   [CURRNIDX] = case when @CURRNIDX IS NULL then [CURRNIDX] else @CURRNIDX end AND 
   [NOTEINDX] = case when @NOTEINDX IS NULL then [NOTEINDX] else @NOTEINDX end AND 
   [CRNCYDSC] = case when @CRNCYDSC IS NULL then [CRNCYDSC] else @CRNCYDSC end AND 
   [CRNCYSYM] = case when @CRNCYSYM IS NULL then [CRNCYSYM] else @CRNCYSYM end AND 
   [CNYSYMAR_1] = case when @CNYSYMAR_1 IS NULL then [CNYSYMAR_1] else @CNYSYMAR_1 end AND 
   [CNYSYMAR_2] = case when @CNYSYMAR_2 IS NULL then [CNYSYMAR_2] else @CNYSYMAR_2 end AND 
   [CNYSYMAR_3] = case when @CNYSYMAR_3 IS NULL then [CNYSYMAR_3] else @CNYSYMAR_3 end AND 
   [CYSYMPLC] = case when @CYSYMPLC IS NULL then [CYSYMPLC] else @CYSYMPLC end AND 
   [INCLSPAC] = case when @INCLSPAC IS NULL then [INCLSPAC] else @INCLSPAC end AND 
   [NEGSYMBL] = case when @NEGSYMBL IS NULL then [NEGSYMBL] else @NEGSYMBL end AND 
   [NGSMAMPC] = case when @NGSMAMPC IS NULL then [NGSMAMPC] else @NGSMAMPC end AND 
   [NEGSMPLC] = case when @NEGSMPLC IS NULL then [NEGSMPLC] else @NEGSMPLC end AND 
   [DECSYMBL] = case when @DECSYMBL IS NULL then [DECSYMBL] else @DECSYMBL end AND 
   [DECPLCUR] = case when @DECPLCUR IS NULL then [DECPLCUR] else @DECPLCUR end AND 
   [THOUSSYM] = case when @THOUSSYM IS NULL then [THOUSSYM] else @THOUSSYM end AND 
   [CURTEXT_1] = case when @CURTEXT_1 IS NULL then [CURTEXT_1] else @CURTEXT_1 end AND 
   [CURTEXT_2] = case when @CURTEXT_2 IS NULL then [CURTEXT_2] else @CURTEXT_2 end AND 
   [CURTEXT_3] = case when @CURTEXT_3 IS NULL then [CURTEXT_3] else @CURTEXT_3 end AND 
   [ISOCURRC] = case when @ISOCURRC IS NULL then [ISOCURRC] else @ISOCURRC end AND 
   [CURLNGID] = case when @CURLNGID IS NULL then [CURLNGID] else @CURLNGID end AND 
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
GRANT EXECUTE ON  [dbo].[ws_get_MC40200] TO [DYNGRP]
GO
