SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taSalesTerrPeriodSum] @I_cSALSTERR	char(15) = '', @O_iErrorState	int = NULL output	 with encryption as set nocount on declare @iCalcDetailErrState	int, @iExecStatus		int, @iStatus		int select @iStatus = 0, @O_iErrorState = 0 if (exists (select 1 from tempdb..sysobjects where id = (select object_id('tempdb..#Holding')))) begin drop table #Holding end create table #Holding ( SALSTERR		char(15), RMDTYPAL		smallint, DOCNUMBR		char(21), DOCDATE			datetime, YEAR1			smallint, PERIODID		smallint, COSTAMNT		numeric(19,5), TTLCOMAM		numeric(19,5), COMSLTDT		numeric(19,5), NCOMAMNT		numeric(19,5) ) create index AK1#Holding on #Holding (DOCNUMBR, RMDTYPAL) create index AK2#Holding on #Holding (RMDTYPAL, DOCNUMBR) create index AK3#Holding on #Holding (SALSTERR,RMDTYPAL, DOCNUMBR) create index AK4#Holding on #Holding (YEAR1, PERIODID) create index AK5#Holding on #Holding (SALSTERR, YEAR1, PERIODID) if (exists (select 1 from tempdb..sysobjects where id = (select object_id('tempdb..#CalendarPeriods')))) begin drop table #CalendarPeriods end create table #CalendarPeriods ( PERIODID	smallint ) insert #CalendarPeriods values(1) insert #CalendarPeriods values(2) insert #CalendarPeriods values(3) insert #CalendarPeriods values(4) insert #CalendarPeriods values(5) insert #CalendarPeriods values(6) insert #CalendarPeriods values(7) insert #CalendarPeriods values(8) insert #CalendarPeriods values(9) insert #CalendarPeriods values(10) insert #CalendarPeriods values(11) insert #CalendarPeriods values(12) if (exists (select 1 from tempdb..sysobjects where id = (select object_id('tempdb..#Period')))) begin drop table #Period end create table #Period ( YEAR1		smallint, PERIODID	smallint, StartDate	datetime, EndDate		datetime, ) create index AK1#Period on #Period (YEAR1, PERIODID) create index AK2#Period on #Period (StartDate) create index AK3#Period on #Period (EndDate) insert #Holding	( SALSTERR, RMDTYPAL, DOCNUMBR, DOCDATE, YEAR1, PERIODID, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT ) select	o.SALSTERR, o.RMDTYPAL, o.DOCNUMBR, h.DOCDATE, 0, 0, case when (o.COMDLRAM=0 and o.SLSAMNT=0 and o.NCOMAMNT=0) then 0 else round((o.PRCTOSAL * .0001 * h.COSTAMNT),2) end, o.COMDLRAM, o.SLSAMNT, o.NCOMAMNT from RM10501 o, RM20101 h, RM00303 r, RM00401 k where o.RMDTYPAL = h.RMDTYPAL and	o.DOCNUMBR = h.DOCNUMBR and	h.VOIDSTTS = 0 and	((@I_cSALSTERR='') or ((@I_cSALSTERR <> '')and (o.SALSTERR = @I_cSALSTERR))) and	o.SALSTERR = r.SALSTERR and	(r.KPCALHST = 1 or r.KPERHIST = 1) and	o.RMDTYPAL = k.RMDTYPAL and	o.DOCNUMBR = k.DOCNUMBR and	k.DCSTATUS = 2 insert #Holding	( SALSTERR, RMDTYPAL, DOCNUMBR, DOCDATE, YEAR1, PERIODID, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT ) select	o.SALSTERR, o.RMDTYPAL, o.DOCNUMBR, h.DOCDATE, 0, 0, case when (o.COMDLRAM=0 and o.SLSAMNT=0 and o.NCOMAMNT=0) then 0 else round((o.PRCTOSAL * .0001 * h.COSTAMNT),2) end, o.COMDLRAM, o.SLSAMNT, o.NCOMAMNT from RM30501 o, RM30101 h, RM00303 r, RM00401 k where o.RMDTYPAL = h.RMDTYPAL and	o.DOCNUMBR = h.DOCNUMBR and	h.VOIDSTTS = 0 and	((@I_cSALSTERR='') or ((@I_cSALSTERR <> '')and (o.SALSTERR = @I_cSALSTERR))) and	o.SALSTERR = r.SALSTERR and	(r.KPCALHST = 1 or r.KPERHIST = 1) and	o.RMDTYPAL = k.RMDTYPAL and	o.DOCNUMBR = k.DOCNUMBR and	k.DCSTATUS = 3 insert #Period (YEAR1, PERIODID, StartDate, EndDate) select YEAR1, PERIODID, PERIODDT, '' from SY40100 where FORIGIN = 1 and PERIODID <> 0 order by YEAR1, PERIODID update f1 set f1.EndDate = f2.StartDate - 1 from #Period f1, #Period f2 where f1.YEAR1 = f2.YEAR1 and	f1.PERIODID + 1 = f2.PERIODID update t set t.EndDate = f.LSTFSCDY from #Period t, SY40101 f where t.YEAR1 = f.YEAR1 and	t.EndDate = '' update h set h.YEAR1 = f.YEAR1, h.PERIODID = f.PERIODID from #Holding h, #Period f where h.DOCDATE >= f.StartDate and	h.DOCDATE <= f.EndDate delete #Holding where YEAR1 = 0  delete o from RM00305 o where o.HISTTYPE = 1 and ((@I_cSALSTERR='') or ((@I_cSALSTERR <> '')and (o.SALSTERR = @I_cSALSTERR))) insert RM00305 (SALSTERR,HISTTYPE,PERIODID,YEAR1,SMRYDATE,COSTAMNT,TTLCOMAM,COMSLTDT,NCOMAMNT) select h.SALSTERR, 1, h.PERIODID, h.YEAR1, '', 0, 0, 0, 0 from #Holding h, RM00303 c where h.SALSTERR = c.SALSTERR and	c.KPERHIST = 1 group by h.SALSTERR, h.YEAR1, h.PERIODID exec @iExecStatus = taSalesTerrPeriodSumDetail @I_sHISTTYPE	= 1, @O_iErrorState	= @iCalcDetailErrState output if (@iCalcDetailErrState <> 0) begin select @iStatus = @iCalcDetailErrState end else begin if (@iExecStatus <> 0) begin select @iStatus = @iExecStatus end end if (@iStatus <> 0) begin select @O_iErrorState = 200  return @iStatus end truncate table #Period insert #Period (YEAR1, PERIODID, StartDate, EndDate) select year(y.PERIODDT), c.PERIODID, cast(str(c.PERIODID) +'/1/'+str(year(y.PERIODDT)) as datetime) BeginDate, '' from SY40100 y, #CalendarPeriods c where y.FORIGIN = 1 and y.PERIODID = 1 update f1 set f1.EndDate = f2.StartDate - 1 from #Period f1, #Period f2 where f1.YEAR1 = f2.YEAR1 and	f1.PERIODID + 1 = f2.PERIODID update t set t.EndDate = cast(str(t.PERIODID) +'/31/'+str(YEAR1) as datetime) from #Period t where t.EndDate = '' update h set h.YEAR1 = f.YEAR1, h.PERIODID = f.PERIODID from #Holding h, #Period f where h.DOCDATE >= f.StartDate and	h.DOCDATE <= f.EndDate delete o from RM00305 o where o.HISTTYPE = 0 and ((@I_cSALSTERR='') or ((@I_cSALSTERR <> '')and (o.SALSTERR = @I_cSALSTERR))) insert RM00305 (SALSTERR,HISTTYPE,PERIODID,YEAR1,SMRYDATE,COSTAMNT,TTLCOMAM,COMSLTDT,NCOMAMNT) select h.SALSTERR, 0, h.PERIODID, h.YEAR1, '', 0, 0, 0, 0 from #Holding h, RM00303 c where h.SALSTERR = c.SALSTERR and	c.KPCALHST = 1 group by h.SALSTERR, h.YEAR1, h.PERIODID exec @iExecStatus = taSalesTerrPeriodSumDetail @I_sHISTTYPE	= 0, @O_iErrorState	= @iCalcDetailErrState output if (@iCalcDetailErrState <> 0) begin select @iStatus = @iCalcDetailErrState end else begin if (@iExecStatus <> 0) begin select @iStatus = @iExecStatus end end if (@iStatus <> 0) begin select @O_iErrorState = 201  return @iStatus end set nocount off return(@iStatus) 
GO
GRANT EXECUTE ON  [dbo].[taSalesTerrPeriodSum] TO [DYNGRP]
GO