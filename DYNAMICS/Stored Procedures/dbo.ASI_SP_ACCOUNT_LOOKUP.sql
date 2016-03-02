SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ASI_SP_ACCOUNT_LOOKUP]  @temptable varchar(20),  @table varchar(20),  @db varchar(20),  @from1 varchar (254),  @from2 varchar (254),  @from3 varchar (254),  @from4 varchar (254),  @from5 varchar (254),  @from6 varchar (254),  @from7 varchar (254),  @from8 varchar (254),  @from9 varchar (254),  @where1 varchar (254),  @where2 varchar (254),  @where3 varchar (254),  @where4 varchar (254),  @where5 varchar (254),  @where6 varchar (254),  @where7 varchar (254),  @where8 varchar (254),  @where9 varchar (254) AS  declare @numseg smallint, @seg smallint, @cmd varchar(2000) set @cmd =  'delete ' + @temptable +  ' insert ' + @temptable + ' SELECT  ' +  @db + 'GL00100.ACTINDX'   declare l_cursor cursor for select MXNUMSEG from DYNAMICS.dbo.SY003001 open l_cursor fetch next from l_cursor into @numseg close l_cursor deallocate l_cursor set @seg = 0 while @seg < @numseg begin  set @seg = @seg + 1  set @cmd = @cmd + ',' + @db + 'GL00100.ACTNUMBR_' + convert(varchar(2), @seg) end exec(@cmd + ',' + @db + 'GL00100.ACTALIAS,' +  @db + 'GL00100.MNACSGMT,' +  @db + 'GL00100.ACCTTYPE,' +  @db + 'GL00100.ACTDESCR,' +  @db + 'GL00100.PSTNGTYP,' +  @db + 'GL00100.ACCATNUM,' +  @db + 'GL00100.ACTIVE,' +  @db + 'GL00100.TPCLBLNC,' +  @db + 'GL00100.DECPLACS,' +  @db + 'GL00100.FXDORVAR,' +  @db + 'GL00100.BALFRCLC,' +  @db + 'GL00100.DSPLKUPS,' +  @db + 'GL00100.CNVRMTHD,' +  @db + 'GL00100.HSTRCLRT,' +  @db + 'GL00100.NOTEINDX,' +  @db + 'GL00100.CREATDDT,' +  @db + 'GL00100.MODIFDT,' +  @db + 'GL00100.USERDEF1,' +  @db + 'GL00100.USERDEF2,' +  @db + 'GL00100.PostSlsIn,' +  @db + 'GL00100.PostIvIn,' +  @db + 'GL00100.PostPurchIn,' +  @db + 'GL00100.PostPRIn,' +  @db + 'GL00100.ADJINFL,' +  @db + 'GL00100.INFLAREV,' +  @db + 'GL00100.INFLAEQU,' +  @db + 'GL00100.ACCTENTR,' +  @db + 'GL00100.USRDEFS1,' +  @db + 'GL00100.USRDEFS2' + @from1 + @from2 + @from3 + @from4 + @from5 + @from6 + @from7 + @from8 + @from9 + @where1 + @where2 + @where3 + @where4 + @where5 + @where6 + @where7 + @where8 + @where9  )   
GO
GRANT EXECUTE ON  [dbo].[ASI_SP_ACCOUNT_LOOKUP] TO [DYNGRP]
GO