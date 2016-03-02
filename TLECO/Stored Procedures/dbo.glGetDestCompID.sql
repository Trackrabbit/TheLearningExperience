SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[glGetDestCompID]  @IN_IsOriginating INT,  @IN_OrgJE INT,  @IN_Year INT,  @IN_RECTRXSEQ NUMERIC(19,5),  @I_DestCompID VARCHAR(100) OUT,  @O_iErrorState INT = NULL OUT  as BEGIN  DECLARE   @l_ParmDefinition NVARCHAR(500),   @l_CompID CHAR(5),   @l_ORGCompID CHAR(5),   @l_ID INT,  @l_cmdNExec NVARCHAR(1000)  SELECT @l_CompID = '' , @l_ORGCompID = DB_NAME(), @I_DestCompID = ''   IF @IN_IsOriginating = 1  BEGIN  DECLARE InterCompanyID  CURSOR local for   SELECT DSTCOMID FROM DYNAMICS..IC40100 WHERE ORCOMID = @l_ORGCompID  OPEN InterCompanyID  FETCH NEXT FROM InterCompanyID INTO  @l_CompID  WHILE @@FETCH_STATUS = 0   BEGIN  SELECT @l_cmdNExec = N''   SELECT @l_cmdNExec = N'  SELECT TOP 1 @l_CompIDOut = 1 FROM   (SELECT TOP 1 1 a FROM (SELECT 1 A FROM [' + RTRIM(@l_CompID) + ']..GL10000 WHERE ORIGINJE = ' + CAST(@IN_OrgJE as varchar(30)) + ' and ORCOMID = '''+@l_ORGCompID+'''  UNION  SELECT 1 A FROM [' + RTRIM(@l_CompID) + ']..GL20000 WHERE ORIGINJE = ' + CAST(@IN_OrgJE as varchar(30)) + ' AND ORCOMID = '''+@l_ORGCompID+'''  UNION  SELECT 1 A FROM [' + RTRIM(@l_CompID) + ']..GL30000 WHERE ORIGINJE = ' + CAST(@IN_OrgJE as varchar(30)) + ' AND ORCOMID = '''+@l_ORGCompID+''') a ) a  '    set @l_ParmDefinition = N'@l_CompIDOut int output'   execute sp_executesql @l_cmdNExec,   @l_ParmDefinition,   @l_CompIDOut = @l_ID output    if @l_ID = 1   BEGIN  SELECT @I_DestCompID = @l_CompID  CLOSE InterCompanyID  DEALLOCATE InterCompanyID  RETURN  END   FETCH NEXT FROM InterCompanyID INTO  @l_CompID  END   CLOSE InterCompanyID  DEALLOCATE InterCompanyID  END  ELSE  BEGIN  SELECT TOP 1 @I_DestCompID = ORCOMID FROM (  SELECT ORCOMID FROM GL20000 WHERE OPENYEAR = @IN_Year AND JRNENTRY = @IN_OrgJE AND RCTRXSEQ = @IN_RECTRXSEQ  UNION  SELECT ORCOMID FROM GL30000 WHERE HSTYEAR =  @IN_Year AND JRNENTRY = @IN_OrgJE AND RCTRXSEQ = @IN_RECTRXSEQ) a  END END   
GO
GRANT EXECUTE ON  [dbo].[glGetDestCompID] TO [DYNGRP]
GO