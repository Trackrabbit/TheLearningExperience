SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create             procedure [dbo].[aagGetActualDistIDGLWork] @iHdrID int = 0,  @iDispDistID   int = 0,  @iPostedTrx  tinyint = 0,  @iFutureDist tinyint = 0,  @oActualDistID  int = 0 output   as begin  declare @DistID int  select @DistID = 0   if exists (select name from tempdb..sysobjects where name = '#newtable' and type = 'U')   drop table #newtable  select aaGLWorkHdrID, aaGLWorkDistID, IDENTITY(int, 1,1) AS DisplayDistID into #newtable from AAG10001   where aaGLWorkHdrID = @iHdrID and aaGLWorkDistID > 0  and aaBrowseType <> 0  Order by aaGLWorkDistID   select @DistID = aaGLWorkDistID from #newtable where DisplayDistID = abs(@iDispDistID)  if exists(Select aaGLWorkDistID  from AAG10001 where aaGLWorkHdrID = @iHdrID and   aaGLWorkDistID =  @iDispDistID and aaOFFSETAcct = 1)  select @oActualDistID = @iDispDistID   else  select @oActualDistID = @DistID  drop table #newtable end     
GO
GRANT EXECUTE ON  [dbo].[aagGetActualDistIDGLWork] TO [DYNGRP]
GO
