SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROCEDURE [dbo].[PP_Batch_Total] @batch char(15),@source char(15),@series int AS create table #JO(NUMOFTRX int null,BCHTOTAL  numeric(19,4) null) insert #JO select   isnull((select count(*)   from PP400001 a where a.BACHNUMB = @batch and a.BCHSOURC = @source and a.SERIES = @series),0),   isnull((select isnull(sum(a.TRXAMNT),0)   from PP400001 a where a.BACHNUMB = @batch and a.BCHSOURC = @source and a.SERIES = @series),0) update PP400000 set NUMOFTRX = a.NUMOFTRX from #JO a,PP400000 b where b.BACHNUMB = @batch and b.BCHSOURC = @source and b.SERIES = @series update PP400000   set BCHTOTAL = a.BCHTOTAL from #JO a,PP400000 b where b.BACHNUMB = @batch and b.BCHSOURC = @source and b.SERIES = @series drop table #JO    
GO
GRANT EXECUTE ON  [dbo].[PP_Batch_Total] TO [DYNGRP]
GO
