SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[glICDists]  @iNewJrnlEntry int  = NULL,  @iCopyJrnlEntry int  = NULL,  @iOrigCompanyID varchar(5) = NULL,  @iBatchNum char(15) = NULL,  @iDecimalPlaces smallint = NULL,  @iRevDistFlag smallint = NULL,  @TRXSORCE char(13) = NULL as  Begin declare   @lReturnStatus INT,  @SqlStmt VARCHAR(8000),  @DestCompID VARCHAR(5),  @SQNCLINE1 NUMERIC(19,5),  @l_ParmDefinition NVARCHAR(500),  @l_ID INT,  @l_cmdNExec NVARCHAR(1000)   Begin  SELECT * INTO ##ICDISTTEMP FROM (SELECT JRNENTRY as ROWNUMB,   BACHNUMB,JRNENTRY,SQNCLINE,ACTINDX,XCHGRATE,DSCRIPTN,GLLINMSG,GLLINMS2,CURRNIDX,  GLLINVAL,ACCTTYPE,FXDORVAR,BALFRCLC,PSTNGTYP,DECPLACS,ORCTRNUM,ORDOCNUM,ORMSTRID,  ORMSTRNM,ORTRXTYP,OrigSeqNum,ORTRXDESC,DTA_GL_Status,INTERID,RATETPID,EXGTBLID,  EXCHDATE,TIME1,RTCLCMTD,CRDTAMNT,DEBITAMT,ORCRDAMT,ORDBTAMT,DENXRATE,MCTRXSTT,  LNESTAT,CorrespondingUnit   FROM GL10001 WHERE 1 = 2) as t1   select @SQNCLINE1 = MAX(SQNCLINE) FROM GL10001 WHERE JRNENTRY = @iNewJrnlEntry   declare IcDists cursor local for  select  Distinct DSTCOMID FROM DYNAMICS..IC40100 WHERE ORCOMID = @iOrigCompanyID   open IcDists  fetch next from IcDists into @DestCompID  while @@fetch_status = 0  begin  SET @l_ID = 0  SELECT @l_cmdNExec = N''   SELECT @l_cmdNExec = N'  SELECT TOP 1 @l_CompIDOut = 1 FROM   (SELECT TOP 1 1 a FROM (SELECT 1 A FROM [' + RTRIM(@DestCompID) + ']..GL10000 WHERE ORIGINJE = ' + CAST(@iCopyJrnlEntry as varchar(30)) + ' and ORCOMID = '''+@iOrigCompanyID+'''  UNION  SELECT 1 A FROM [' + RTRIM(@DestCompID) + ']..GL20000 WHERE ORIGINJE = ' + CAST(@iCopyJrnlEntry as varchar(30)) + ' AND ORCOMID = '''+@iOrigCompanyID+'''  UNION  SELECT 1 A FROM [' + RTRIM(@DestCompID) + ']..GL30000 WHERE ORIGINJE = ' + CAST(@iCopyJrnlEntry as varchar(30)) + ' AND ORCOMID = '''+@iOrigCompanyID+''') a ) a  '   set @l_ParmDefinition = N'@l_CompIDOut int output'   execute sp_executesql @l_cmdNExec,   @l_ParmDefinition,   @l_CompIDOut = @l_ID output    IF @l_ID = 1   BEGIN  select @SqlStmt = 'exec ' + RTRIM(@DestCompID) +'..glpgetICDists '  + convert(varchar(20),@iNewJrnlEntry) + ','  + convert(varchar(20),@iCopyJrnlEntry) + ','  + ''''+@iOrigCompanyID + ''''+','  + convert(varchar(20),@SQNCLINE1) + ','  + convert(varchar(6),@iDecimalPlaces)+ ','  + convert(varchar(6),@iRevDistFlag)+ ','  + ''''+convert(varchar(13),@TRXSORCE) + ''''   exec (@SqlStmt)  END   fetch next from IcDists into @DestCompID  end  close IcDists  deallocate IcDists  insert into GL10001 (BACHNUMB, JRNENTRY, SQNCLINE,ACTINDX,XCHGRATE,DSCRIPTN,GLLINMSG,GLLINMS2,CURRNIDX,  GLLINVAL,ACCTTYPE,FXDORVAR,BALFRCLC,PSTNGTYP,DECPLACS,ORCTRNUM,ORDOCNUM,ORMSTRID,  ORMSTRNM,ORTRXTYP,OrigSeqNum,ORTRXDESC,DTA_GL_Status,INTERID,RATETPID,EXGTBLID,  EXCHDATE,TIME1,RTCLCMTD,CRDTAMNT,DEBITAMT,ORCRDAMT,ORDBTAMT,DENXRATE,MCTRXSTT,  LNESTAT, CorrespondingUnit) SELECT   @iBatchNum, @iNewJrnlEntry, SQNCLINE ,ACTINDX,XCHGRATE,DSCRIPTN,GLLINMSG,GLLINMS2,CURRNIDX,  GLLINVAL,ACCTTYPE,FXDORVAR,BALFRCLC,PSTNGTYP,DECPLACS,ORCTRNUM,ORDOCNUM,ORMSTRID,  ORMSTRNM,ORTRXTYP,OrigSeqNum,ORTRXDESC,DTA_GL_Status,INTERID,RATETPID,EXGTBLID,  EXCHDATE,TIME1,RTCLCMTD,CRDTAMNT,DEBITAMT,ORCRDAMT,ORDBTAMT,DENXRATE,MCTRXSTT,  LNESTAT, CorrespondingUnit  FROM ##ICDISTTEMP  drop table ##ICDISTTEMP  select @lReturnStatus = 0  end return @lReturnStatus end   
GO
GRANT EXECUTE ON  [dbo].[glICDists] TO [DYNGRP]
GO