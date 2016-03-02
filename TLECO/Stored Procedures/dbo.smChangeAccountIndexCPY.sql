SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[smChangeAccountIndexCPY]   @I_intStartAcct varchar(15), @I_intEndAcct 	varchar(15), @I_intACTINDX1 	int, @I_intACTINDX2 	int, @O_iErrorState 	int = NULL  output with encryption as set transaction isolation level read uncommitted set nocount on declare @cStatement2 varchar(1000), @cStatement3 varchar(1000), @cStatement4 varchar(1000), @cStatement5 varchar(1000), @cStatement6 varchar(1000), @tTransaction tinyint, @tLoop tinyint select	@O_iErrorState 	= 0, @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '', @cStatement6 = '', @tLoop = null if @@trancount = 0 begin select @tTransaction = 1 begin transaction end while ( @tLoop is NULL ) begin select @tLoop = 1 if	@I_intStartAcct	is NULL or @I_intEndAcct is NULL or @I_intACTINDX1 is NULL or @I_intACTINDX2 is NULL  begin select @O_iErrorState = 400  break end select @cStatement3 = '' select @cStatement2 = 'select PPostingDate,sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT into ##CPYTABLE from CPY30130 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by PPostingDate' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 401  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY30130 a, ##CPYTABLE b, GL00100 c where  a.PPostingDate = b.PPostingDate and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 402  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY30130 a, GL00100 b, CPY30130 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 403  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY30130 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 404  break end select @cStatement3 = '' select @cStatement2 = 'select PEmployeeID, sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT, PPostingDate into ##CPYTABLE from CPY30131 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by PEmployeeID, PPostingDate' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 405  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY30131 a, ##CPYTABLE b, GL00100 c where  a.PPostingDate = b.PPostingDate and a.PEmployeeID = b.PEmployeeID and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 406  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY30131 a, GL00100 b, CPY30131 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 407  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY30131 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 408  break end select @cStatement3 = '' select @cStatement2 = 'select PWCBMonthEnd, PEmployeeID, sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT, PPostingDate, PWCBMonth, PWCBCalcMethod, PWCBPostingReversal into ##CPYTABLE from CPY30133 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by PWCBMonthEnd, PEmployeeID, PPostingDate, PWCBMonth, PWCBCalcMethod, PWCBPostingReversal' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 409  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY30133 a, ##CPYTABLE b, GL00100 c where  a.PWCBMonthEnd = b. PWCBMonthEnd and a.PEmployeeID = b.PEmployeeID and a.PPostingDate = b.PPostingDate and a.PEmployeeID = b.PEmployeeID and a.PWCBMonth = b.PWCBMonth and a.PWCBCalcMethod = b.PWCBCalcMethod and a.PWCBPostingReversal = b.PWCBPostingReversal and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 410  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY30133 a, GL00100 b, CPY30133 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 411  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY30133 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 412  break end select @cStatement3 = '' select @cStatement2 = 'select PWCBMonthEnd, PWCBMonth, sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT, PPostingDate, PWCBCalcMethod, PWCBPostingReversal into ##CPYTABLE from CPY30134 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by PWCBMonthEnd, PWCBMonth, PPostingDate, PWCBCalcMethod, PWCBPostingReversal' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 413  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY30134 a, ##CPYTABLE b, GL00100 c where  a.PWCBMonthEnd = b. PWCBMonthEnd and a.PWCBMonth = b.PWCBMonth and a.PPostingDate = b.PPostingDate and a.PWCBCalcMethod = b.PWCBCalcMethod and a.PWCBPostingReversal = b.PWCBPostingReversal and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 414  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY30134 a, GL00100 b, CPY30134 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 415  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY30134 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 416  break end select @cStatement3 = '' select @cStatement2 = 'select BACHNUMB, sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT, PPostingDate into ##CPYTABLE from CPY30230 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by BACHNUMB, PPostingDate' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 417  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY30230 a, ##CPYTABLE b, GL00100 c where  a.BACHNUMB = b. BACHNUMB and a.PPostingDate = b.PPostingDate and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 418  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY30230 a, GL00100 b, CPY30230 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 419  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY30230 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 420  break end select @cStatement3 = '' select @cStatement2 = 'select PEmployeeID, sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT, PPostingDate, BACHNUMB into ##CPYTABLE from CPY30231 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by PEmployeeID, PPostingDate, BACHNUMB' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 421  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY30231 a, ##CPYTABLE b, GL00100 c where  a.PEmployeeID = b. PEmployeeID and a.PPostingDate = b.PPostingDate and a.BACHNUMB = b.BACHNUMB and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 422  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY30231 a, GL00100 b, CPY30231 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 423  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY30231 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 424  break end select @cStatement3 = '' select @cStatement2 = 'select PEmployeeID, sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT, PPostingDate, BACHNUMB into ##CPYTABLE from CPY30232 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by PEmployeeID, PPostingDate, BACHNUMB' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 425  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY30232 a, ##CPYTABLE b, GL00100 c where  a.PEmployeeID = b. PEmployeeID and a.PPostingDate = b.PPostingDate and a.BACHNUMB = b.BACHNUMB and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 426  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY30232 a, GL00100 b, CPY30232 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 427  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY30232 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 428  break end select @cStatement3 = '' select @cStatement2 = 'select PWCBMonthEnd, PEmployeeID, sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT, PPostingDate, PWCBMonth, PWCBCalcMethod, PWCBPostingReversal into ##CPYTABLE from CPY30233 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by PWCBMonthEnd, PEmployeeID, PPostingDate, PWCBMonth, PWCBCalcMethod, PWCBPostingReversal' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 429  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY30233 a, ##CPYTABLE b, GL00100 c where  a.PWCBMonthEnd = b.PWCBMonthEnd and a.PEmployeeID = b. PEmployeeID and a.PPostingDate = b.PPostingDate and a.PWCBMonth = b.PWCBMonth and a.PWCBCalcMethod = b.PWCBCalcMethod and a.PWCBPostingReversal = b.PWCBPostingReversal and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 430  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY30233 a, GL00100 b, CPY30233 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 431  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY30233 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 432  break end select @cStatement3 = '' select @cStatement2 = 'select PWCBMonthEnd, PWCBMonth, sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT, PPostingDate, PWCBCalcMethod, PWCBPostingReversal into ##CPYTABLE from CPY30234 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by PWCBMonthEnd, PWCBMonth, PPostingDate, PWCBCalcMethod, PWCBPostingReversal' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 433  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY30234 a, ##CPYTABLE b, GL00100 c where  a.PWCBMonthEnd = b.PWCBMonthEnd and a.PWCBMonth = b. PWCBMonth and a.PPostingDate = b.PPostingDate and a.PWCBCalcMethod = b.PWCBCalcMethod and a.PWCBCalcMethod = b.PWCBCalcMethod and a.PWCBPostingReversal = b.PWCBPostingReversal and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 434  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY30234 a, GL00100 b, CPY30234 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 435  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY30234 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 436  break end select @cStatement3 = '' select @cStatement2 = 'select PYear, BACHNUMB, sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT, PPostingDate into ##CPYTABLE from CPY50230 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by PYear, BACHNUMB, PPostingDate' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 437  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY50230 a, ##CPYTABLE b, GL00100 c where  a.PYear = b.PYear and a.BACHNUMB = b. BACHNUMB and a.PPostingDate = b.PPostingDate and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 438  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY50230 a, GL00100 b, CPY50230 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 439  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY50230 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 440  break end select @cStatement3 = '' select @cStatement2 = 'select PYear, PEmployeeID, sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT, PPostingDate, BACHNUMB into ##CPYTABLE from CPY50231 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by PYear, PEmployeeID, PPostingDate, BACHNUMB' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 441  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY50231 a, ##CPYTABLE b, GL00100 c where  a.PYear = b.PYear and a.PEmployeeID = b. PEmployeeID and a.PPostingDate = b.PPostingDate and a.BACHNUMB = b.BACHNUMB and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 442  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY50231 a, GL00100 b, CPY50231 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 443  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY50231 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 444  break end select @cStatement3 = '' select @cStatement2 = 'select PYear, PWCBMonthEnd, PWCBMonth, sum(CRDTAMNT) as CRDTAMNT, sum(DEBITAMT) as DEBITAMT, PPostingDate, PWCBCalcMethod, PWCBPostingReversal into ##CPYTABLE from CPY50234 a, GL00100 b where (b.ACTINDX = '+@I_intStartAcct+' or b.ACTINDX = '+@I_intEndAcct+')' select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' group by PYear, PWCBMonthEnd, PWCBMonth, PPostingDate, PWCBCalcMethod, PWCBPostingReversal' exec (@cStatement2+@cStatement3+@cStatement4) if (@@error <> 0) begin select @O_iErrorState = 445  break end select @cStatement3 = '' select @cStatement2 = ' update a set a.CRDTAMNT = b.CRDTAMNT , a.DEBITAMT = b.DEBITAMT from CPY50234 a, ##CPYTABLE b, GL00100 c where  a.PYear = b.PYear and a.PWCBMonthEnd = b. PWCBMonthEnd and a.PWCBMonth = b.PWCBMonth and a.PPostingDate = b.PPostingDate and a.PWCBCalcMethod = b.PWCBCalcMethod and a.PWCBPostingReversal = b.PWCBPostingReversal and c.ACTINDX = '+@I_intEndAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = c.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3) if (@@error <> 0) begin select @O_iErrorState = 446  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = 'delete a from CPY50234 a, GL00100 b, CPY50234 c, GL00100 d where b.ACTINDX = '+@I_intStartAcct select @cStatement3 = @cStatement3+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = b.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' and d.ACTINDX = '+@I_intEndAcct select @cStatement5 = @cStatement5+rtrim(' and c.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = d.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5) if (@@error <> 0) begin select @O_iErrorState = 447  break end select 	@cStatement3 = '', @cStatement5 = '' select @cStatement2 = ' declare @x int update a set @x = 1'  select @cStatement3 = @cStatement3+rtrim(' ,a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = e.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement4 = ' from CPY50234 a, GL00100 s, GL00100 e where s.ACTINDX = '+@I_intStartAcct select @cStatement5 = @cStatement5+rtrim(' and a.DISTACCT_'+ltrim(str(s.SGMTNUMB)))+rtrim(' = s.ACTNUMBR_'+ltrim(str(s.SGMTNUMB))) from DYNAMICS..SY00302 s select @cStatement6 = ' and e.ACTINDX = '+@I_intEndAcct exec (@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6) drop table ##CPYTABLE if (@@error <> 0) begin select @O_iErrorState = 448  break end end if (@O_iErrorState <> 0) begin if (@tTransaction = 1) begin rollback transaction end end else  begin if (@tTransaction = 1) begin commit transaction end end return  
GO
GRANT EXECUTE ON  [dbo].[smChangeAccountIndexCPY] TO [DYNGRP]
GO
