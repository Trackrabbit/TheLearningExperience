SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE     procedure [dbo].[aagCreateGLHistDistTemp] @I_nHdrID int = 0, @I_cTableDistTemp nvarchar(30) = null, @I_fPostedTrx tinyint = 0   as  begin  Declare @TempTable VARCHAR(50),  @TempTableQuery VARCHAR(8000)   select @TempTable = '##aaGLHistDistTemp'  + REPLACE(system_user,'''','') + db_name()  select @TempTableQuery = 'drop table [' + @TempTable + ']'   if exists(select name from tempdb..sysobjects where name = @TempTable and type = 'U')  EXEC(@TempTableQuery)  begin  exec('select[aaGLHdrID],[aaGLDistID], [INTERID],[CorrespondingUnit],[ACTINDX],[ACCTTYPE],[aaBrowseType],  [DECPLACS],[DEBITAMT],[CRDTAMNT],[ORDBTAMT],[ORCRDAMT],[CURNCYID],[CURRNIDX],  [RATETPID],[EXGTBLID],[XCHGRATE],[EXCHDATE],[TIME1],[RTCLCMTD],[DENXRATE],  [MCTRXSTT],[SEQNUMBR],[aaCustID],[aaVendID],[aaSiteID],[aaItemID],[aaCopyStatus]  INTO [' + @TempTable + '] from AAG40001 where aaGLHdrID = ' + @I_nHdrID + ' ' )    exec('alter table [' + @TempTable + '] add aaDistplayDistID int IDENTITY(1, 1)')   exec('truncate table ' + @I_cTableDistTemp)  exec('Insert into ' + @I_cTableDistTemp + ' select * from [' + @TempTable + ']')   EXEC (@TempTableQuery)   return  end end    
GO
GRANT EXECUTE ON  [dbo].[aagCreateGLHistDistTemp] TO [DYNGRP]
GO
