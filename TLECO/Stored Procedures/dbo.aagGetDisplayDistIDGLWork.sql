SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure [dbo].[aagGetDisplayDistIDGLWork] @iHdrID int = 0,  @iDistID    int = 0,  @iPostedTrx  tinyint = 0,  @oDisplayDistID int = 0 output,  @ioDisplayIDTemp varchar(30) = null  as  declare @DistID int  select @DistID = 0   select aaGLWorkHdrID, aaGLWorkDistID, IDENTITY(int, 1,1) AS DisplayDistID into #newtable1 from AAG10001   where aaGLWorkHdrID = @iHdrID and aaGLWorkDistID > 0 and  aaBrowseType <> 0  Order by aaGLWorkDistID select @DistID = DisplayDistID from #newtable1 where aaGLWorkDistID = @iDistID  select @oDisplayDistID = @DistID    
GO
GRANT EXECUTE ON  [dbo].[aagGetDisplayDistIDGLWork] TO [DYNGRP]
GO
