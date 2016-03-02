SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taRMCustMstrPeriodSumDetail] @I_sHISTTYPE	smallint,		 @O_iErrorState	int = NULL output	 with encryption as declare  @iStatus int, @sSALESCB		tinyint, @sDISCNTCB		tinyint, @sFREIGHT		tinyint, @sMISC			tinyint, @sTAX			tinyint select	@iStatus = 0, @O_iErrorState = 0 select @sSALESCB = SALESCB, @sDISCNTCB = DISCNTCB, @sFREIGHT = FREIGHT, @sMISC = MISC, @sTAX = TAX from RM40101 where SETUPKEY = 1 select @I_sHISTTYPE HISTTYPE, h.CUSTNMBR, h.YEAR1, h.PERIODID, count(*) Total into #Total1 from #Holding h where (h.RMDTYPAL = 1 or h.RMDTYPAL = 5) group by h.CUSTNMBR, h.YEAR1, h.PERIODID update r set r.NUMOFINV = c.Total from RM00104 r, #Total1 c where c.HISTTYPE = r.HISTTYPE and	c.CUSTNMBR = r.CUSTNMBR and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 100  return end drop table #Total1 select @I_sHISTTYPE HISTTYPE, h.CUSTNMBR, h.YEAR1, h.PERIODID, sum(SLSAMNT*@sSALESCB + DISTKNAM*@sDISCNTCB + FRTAMNT*@sFREIGHT + MISCAMNT*@sMISC + TAXAMNT*@sTAX) Total into #Total2 from #Holding h where (h.RMDTYPAL = 1 or h.RMDTYPAL = 3 or h.RMDTYPAL = 5) group by h.CUSTNMBR, h.YEAR1, h.PERIODID update r set r.SMRYSALS = c.Total from RM00104 r, #Total2 c where c.HISTTYPE = r.HISTTYPE and	c.CUSTNMBR = r.CUSTNMBR and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 101  return end drop table #Total2 select @I_sHISTTYPE HISTTYPE, h.CUSTNMBR, h.YEAR1, h.PERIODID, sum(SLSAMNT*@sSALESCB + DISTKNAM*@sDISCNTCB + FRTAMNT*@sFREIGHT + MISCAMNT*@sMISC + TAXAMNT*@sTAX) Total into #Total3 from #Holding h where (h.RMDTYPAL = 7 or h.RMDTYPAL = 8) group by h.CUSTNMBR, h.YEAR1, h.PERIODID update r set r.SMRYSALS = r.SMRYSALS - c.Total from RM00104 r, #Total3 c where c.HISTTYPE = r.HISTTYPE and	c.CUSTNMBR = r.CUSTNMBR and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 102  return end drop table #Total3 select @I_sHISTTYPE HISTTYPE, h.CUSTNMBR, h.YEAR1, h.PERIODID, sum(ORTRXAMT) Total into #Total4 from #Holding h where (h.RMDTYPAL = 9) group by h.CUSTNMBR, h.YEAR1, h.PERIODID update r set r.SMRYCRCD = c.Total from RM00104 r, #Total4 c where c.HISTTYPE = r.HISTTYPE and	c.CUSTNMBR = r.CUSTNMBR and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 103  return end drop table #Total4 select @I_sHISTTYPE HISTTYPE, h.CUSTNMBR, h.YEAR1, h.PERIODID, sum(CASHAMNT) Total into #Total5 from #Holding h where (h.RMDTYPAL = 8) group by h.CUSTNMBR, h.YEAR1, h.PERIODID update r set r.SMRYCRCD = r.SMRYCRCD - c.Total from RM00104 r, #Total5 c where c.HISTTYPE = r.HISTTYPE and	c.CUSTNMBR = r.CUSTNMBR and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 104  return end drop table #Total5 select @I_sHISTTYPE HISTTYPE, h.CUSTNMBR, h.YEAR1, h.PERIODID, sum(COSTAMNT) Total into #Total6 from #Holding h where (h.RMDTYPAL = 1 or h.RMDTYPAL = 3 or h.RMDTYPAL = 4 or h.RMDTYPAL = 5) and	(h.VOIDSTTS = 0) group by h.CUSTNMBR, h.YEAR1, h.PERIODID update r set r.SMRYCOST = c.Total from RM00104 r, #Total6 c where c.HISTTYPE = r.HISTTYPE and	c.CUSTNMBR = r.CUSTNMBR and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 105  return end drop table #Total6 select @I_sHISTTYPE HISTTYPE, h.CUSTNMBR, h.YEAR1, h.PERIODID, sum(COSTAMNT) Total into #Total7 from #Holding h where (h.RMDTYPAL = 7 or h.RMDTYPAL = 8) group by h.CUSTNMBR, h.YEAR1, h.PERIODID update r set r.SMRYCOST = r.SMRYCOST - c.Total from RM00104 r, #Total7 c where c.HISTTYPE = r.HISTTYPE and	c.CUSTNMBR = r.CUSTNMBR and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 106  return end drop table #Total7 select @I_sHISTTYPE HISTTYPE, h.CUSTNMBR, h.YEAR1, h.PERIODID, sum(DISTKNAM) Total into #Total8 from #Holding h where (h.RMDTYPAL = 9) group by h.CUSTNMBR, h.YEAR1, h.PERIODID update r set r.SMRYDISC = c.Total from RM00104 r, #Total8 c where c.HISTTYPE = r.HISTTYPE and	c.CUSTNMBR = r.CUSTNMBR and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 107  return end drop table #Total8 select @I_sHISTTYPE HISTTYPE, h.CUSTNMBR, h.YEAR1, h.PERIODID, sum(SMRYFCHR) Total into #Total9 from #Holding h where (h.RMDTYPAL = 4) and	(h.VOIDSTTS = 0) group by h.CUSTNMBR, h.YEAR1, h.PERIODID update r set r.SMRYFCHR = c.Total from RM00104 r, #Total9 c where c.HISTTYPE = r.HISTTYPE and	c.CUSTNMBR = r.CUSTNMBR and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 108  return end drop table #Total9 select @I_sHISTTYPE HISTTYPE, h.CUSTNMBR, h.YEAR1, h.PERIODID, sum(WROFAMNT) Total into #Total10 from #Holding h where (h.RMDTYPAL = 1 or h.RMDTYPAL = 3 or h.RMDTYPAL = 4 or h.RMDTYPAL = 5) and	(h.VOIDSTTS = 0) group by h.CUSTNMBR, h.YEAR1, h.PERIODID update r set r.SMRYWROF = c.Total from RM00104 r, #Total10 c where c.HISTTYPE = r.HISTTYPE and	c.CUSTNMBR = r.CUSTNMBR and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 109  return end drop table #Total10 select @I_sHISTTYPE HISTTYPE, h.CUSTNMBR, h.YEAR1, h.PERIODID, sum(SMRYFCHR) Total into #Total11 from #Holding h where (h.RMDTYPAL = 4) and	(h.VOIDSTTS = 3) group by h.CUSTNMBR, h.YEAR1, h.PERIODID update r set r.SMRYWFCH = c.Total from RM00104 r, #Total11 c where c.HISTTYPE = r.HISTTYPE and	c.CUSTNMBR = r.CUSTNMBR and	c.YEAR1 = r.YEAR1 and	c.PERIODID = r.PERIODID if (@@error <> 0) begin select @iStatus = @@error select @O_iErrorState = 110  return end drop table #Total11 return(@iStatus) 
GO
GRANT EXECUTE ON  [dbo].[taRMCustMstrPeriodSumDetail] TO [DYNGRP]
GO