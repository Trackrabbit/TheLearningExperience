SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[ws_get_MC40000] 
( 
   @FUNLCURR   char(15)= NULL, 
   @FUNCRIDX   smallint = NULL, 
   @RPTGCURR   char(15) = NULL, 
   @RPTCRIDX   smallint = NULL, 
   @RPTXRATE   numeric = NULL, 
   @RPRTCLMD   smallint = NULL, 
   @ALOWNWRT   tinyint = NULL, 
   @ANWRTPWD   char(11) = NULL, 
   @ALWMODRT   tinyint = NULL, 
   @MODRTPWD   char(11) = NULL, 
   @ALOVEXRT   tinyint = NULL, 
   @OVXRTPWD   char(11) = NULL, 
   @AOVRTVAR   tinyint = NULL, 
   @OVRTVPWD   char(11) = NULL, 
   @AOVRPTRT   tinyint = NULL, 
   @OVRPRPWD   char(11) = NULL, 
   @AVGEXRAT   smallint = NULL, 
   @DEFFINTP   char(15) = NULL, 
   @DEFSLSTP   char(15) = NULL, 
   @DEFPURTP   char(15) = NULL, 
   @MNSUMHST   tinyint = NULL, 
   @LSTREVAL   datetime = NULL, 
   @LSTPRVAL   datetime = NULL, 
   @LSTSRVAL   datetime = NULL, 
   @LSTTRXRV   datetime = NULL, 
   @LSTSUMRV   datetime = NULL, 
   @DEX_ROW_ID   int = NULL, 
   @RETURNVALUE INT = NULL OUT 
) 
AS 
  
DECLARE @ERROR_VAR INT 
DECLARE @ROWCOUNT_VAR INT 
  
SELECT  
   [FUNLCURR], 
   [FUNCRIDX], 
   [RPTGCURR], 
   [RPTCRIDX], 
   [RPTXRATE], 
   [RPRTCLMD], 
   [ALOWNWRT], 
   [ANWRTPWD], 
   [ALWMODRT], 
   [MODRTPWD], 
   [ALOVEXRT], 
   [OVXRTPWD], 
   [AOVRTVAR], 
   [OVRTVPWD], 
   [AOVRPTRT], 
   [OVRPRPWD], 
   [AVGEXRAT], 
   [DEFFINTP], 
   [DEFSLSTP], 
   [DEFPURTP], 
   [MNSUMHST], 
   [LSTREVAL], 
   [LSTPRVAL], 
   [LSTSRVAL], 
   [LSTTRXRV], 
   [LSTSUMRV], 
   [DEX_ROW_ID] 
FROM [dbo].[MC40000] 
WHERE 
   [FUNLCURR] = case when @FUNLCURR IS NULL then [FUNLCURR] else @FUNLCURR end AND 
   [FUNCRIDX] = case when @FUNCRIDX IS NULL then [FUNCRIDX] else @FUNCRIDX end AND 
   [RPTGCURR] = case when @RPTGCURR IS NULL then [RPTGCURR] else @RPTGCURR end AND 
   [RPTCRIDX] = case when @RPTCRIDX IS NULL then [RPTCRIDX] else @RPTCRIDX end AND 
   [RPTXRATE] = case when @RPTXRATE IS NULL then [RPTXRATE] else @RPTXRATE end AND 
   [RPRTCLMD] = case when @RPRTCLMD IS NULL then [RPRTCLMD] else @RPRTCLMD end AND 
   [ALOWNWRT] = case when @ALOWNWRT IS NULL then [ALOWNWRT] else @ALOWNWRT end AND 
   [ANWRTPWD] = case when @ANWRTPWD IS NULL then [ANWRTPWD] else @ANWRTPWD end AND 
   [ALWMODRT] = case when @ALWMODRT IS NULL then [ALWMODRT] else @ALWMODRT end AND 
   [MODRTPWD] = case when @MODRTPWD IS NULL then [MODRTPWD] else @MODRTPWD end AND 
   [ALOVEXRT] = case when @ALOVEXRT IS NULL then [ALOVEXRT] else @ALOVEXRT end AND 
   [OVXRTPWD] = case when @OVXRTPWD IS NULL then [OVXRTPWD] else @OVXRTPWD end AND 
   [AOVRTVAR] = case when @AOVRTVAR IS NULL then [AOVRTVAR] else @AOVRTVAR end AND 
   [OVRTVPWD] = case when @OVRTVPWD IS NULL then [OVRTVPWD] else @OVRTVPWD end AND 
   [AOVRPTRT] = case when @AOVRPTRT IS NULL then [AOVRPTRT] else @AOVRPTRT end AND 
   [OVRPRPWD] = case when @OVRPRPWD IS NULL then [OVRPRPWD] else @OVRPRPWD end AND 
   [AVGEXRAT] = case when @AVGEXRAT IS NULL then [AVGEXRAT] else @AVGEXRAT end AND 
   [DEFFINTP] = case when @DEFFINTP IS NULL then [DEFFINTP] else @DEFFINTP end AND 
   [DEFSLSTP] = case when @DEFSLSTP IS NULL then [DEFSLSTP] else @DEFSLSTP end AND 
   [DEFPURTP] = case when @DEFPURTP IS NULL then [DEFPURTP] else @DEFPURTP end AND 
   [MNSUMHST] = case when @MNSUMHST IS NULL then [MNSUMHST] else @MNSUMHST end AND 
   [LSTREVAL] = case when @LSTREVAL IS NULL then [LSTREVAL] else @LSTREVAL end AND 
   [LSTPRVAL] = case when @LSTPRVAL IS NULL then [LSTPRVAL] else @LSTPRVAL end AND 
   [LSTSRVAL] = case when @LSTSRVAL IS NULL then [LSTSRVAL] else @LSTSRVAL end AND 
   [LSTTRXRV] = case when @LSTTRXRV IS NULL then [LSTTRXRV] else @LSTTRXRV end AND 
   [LSTSUMRV] = case when @LSTSUMRV IS NULL then [LSTSUMRV] else @LSTSUMRV end AND 
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
GRANT EXECUTE ON  [dbo].[ws_get_MC40000] TO [DYNGRP]
GO
