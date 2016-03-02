SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taSalesPersonPeriodSumDetail] @I_sHISTTYPE	smallint,		 @O_iErrorState	int = NULL output	 with encryption as declare  @iStatus int select	@iStatus = 0, @O_iErrorState = 0 select @I_sHISTTYPE HISTTYPE, h.SLPRSNID, h.YEAR1, h.PERIODID, sum(COSTAMNT) COSTAMNT, sum(TTLCOMAM) TTLCOMAM, sum(COMSLTDT) COMSLTDT, sum(NCOMAMNT) NCOMAMNT into #Total2 from #Holding h where h.RMDTYPAL <> 8 group by h.SLPRSNID, h.YEAR1, h.PERIODID update r set r.COSTAMNT = c.COSTAMNT, r.TTLCOMAM = c.TTLCOMAM, r.COMSLTDT = c.COMSLTDT, r.NCOMAMNT = c.NCOMAMNT from RM00302 r, #Total2 c where c.HISTTYPE = r.HISTTYPE and	c.SLPRSNID = r.SLPRSNID and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 101  return end drop table #Total2 select @I_sHISTTYPE HISTTYPE, h.SLPRSNID, h.YEAR1, h.PERIODID, sum(COSTAMNT) COSTAMNT, sum(TTLCOMAM) TTLCOMAM, sum(COMSLTDT) COMSLTDT, sum(NCOMAMNT) NCOMAMNT into #Total3 from #Holding h where h.RMDTYPAL = 8 group by h.SLPRSNID, h.YEAR1, h.PERIODID update r set r.COSTAMNT = r.COSTAMNT-c.COSTAMNT, r.TTLCOMAM = r.TTLCOMAM-c.TTLCOMAM, r.COMSLTDT = r.COMSLTDT-c.COMSLTDT, r.NCOMAMNT = r.NCOMAMNT-c.NCOMAMNT from RM00302 r, #Total3 c where c.HISTTYPE = r.HISTTYPE and	c.SLPRSNID = r.SLPRSNID and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 102  return end drop table #Total3 return(@iStatus) 
GO
GRANT EXECUTE ON  [dbo].[taSalesPersonPeriodSumDetail] TO [DYNGRP]
GO
