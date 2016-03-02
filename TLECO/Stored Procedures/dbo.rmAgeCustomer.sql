SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmAgeCustomer]   @I_iBalanceType int  = NULL,  @I_sBeginCustNumber char(15) = NULL,  @I_sEndCustNumber char(15) = NULL,  @I_dAgingDate datetime = NULL,  @I_iStatementCycle int  = NULL,  @I_tAgeFinanceCharges tinyint  = NULL,  @UsingCustomRange tinyint  = NULL,  @MarkedTable varchar(15)     = NULL,  @O_iErrorState int  = NULL output as  declare  @TRUE smallint,  @FALSE smallint,  @iStatus int,  @iError int,   @tLoop tinyint,  @RMBALFWD int,    @RMDOCFNCHG int,    @RMDOCWARR int,    @RMDOCCRMEMO int,    @RMDOCRETURNS int,    @RMDOCCASH int,    @RMDOCSCHPYMNT int,   @vRestrictBalanceType  varchar(255),   @vAgingPeriod1   varchar(255),   @vAgingPeriod2   varchar(255),   @vBalanceForward varchar(255),   @iAgeByDocDate   smallint,       @cExecStringIncBalType  char(1),        @vCustomerNumberRestrict varchar(255),   @vStatementCycleRestrict varchar(255),   @iCompoundFinCHG int,              @CUSTBALFWD int,    @dMinDate datetime,  @cMinDate char(12),  @sAgeCrAmts tinyint       select  @O_iErrorState = 0,  @iStatus  = 0,  @CUSTBALFWD = 1  select  @TRUE    = 1,  @FALSE   = 0  exec @iStatus = smGetMinDate @dMinDate output  while (@tLoop is NULL) begin  select @tLoop = 1   if @I_iBalanceType is NULL  or @I_sBeginCustNumber is NULL  or @I_sEndCustNumber is NULL  or @I_dAgingDate is NULL  or @I_iStatementCycle is NULL  or @I_tAgeFinanceCharges is NULL   begin  select @O_iErrorState = 20846  break  end   exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'RM_BAL_FRWD',   @RMBALFWD output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'RM_DOC_FNCHG',   @RMDOCFNCHG output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'RM_DOC_WARR',   @RMDOCWARR output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'RM_DOC_CRMEMO',   @RMDOCCRMEMO output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'RM_DOC_RETURNS',   @RMDOCRETURNS output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'RM_DOC_CASH',   @RMDOCCASH output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'RM_DOC_SCH_PYMNT',   @RMDOCSCHPYMNT output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   create table #EndingPeriodDates (PERIODID  int   not null,  BALANCETYPE tinyint not null,  STARTDATE datetime not null,  ENDDATE datetime not null)   create table #TempAgingTable (CUSTNUMBR  char(15)  not null,  DOCNUMBR char(21) not null,  DOCTYPE smallint not null,  BALANCETYPE smallint not null,  AGINGPERIOD int not null,  DOCAMOUNT numeric(19,5)  not null)   create table #SumAgingTable (  CUSTNUMBR  char(15)  not null,  AGINGPERIOD int not null,   AGINGDATE datetime not null,  DOCAMOUNT numeric(19,5)  not null)   create table #FinanceCharge (  CUSTNUMBR  char(15)  not null,  BALANCETYPE smallint not null,  DOCAMOUNT numeric(19,5)  not null)   create index AK1SumAgingTable on #SumAgingTable (CUSTNUMBR)   exec @iStatus = rmCreateAgingPeriodTable @I_dAgingDate, @iStatus output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   select @cMinDate = '''' + convert(char(10),@dMinDate,102) + ''''   select  @iAgeByDocDate = AGEBY, @iCompoundFinCHG = CPDFINCH, @sAgeCrAmts = AGEUNAPPLDCR  from  RM40101 with (NOLOCK)   if @sAgeCrAmts = 0    begin  select @vAgingPeriod1 = '(select  case when A.RMDTYPAL <> 0 then PERIODID  else 2 end from #EndingPeriodDates '  if @iAgeByDocDate = 1  select @vAgingPeriod2 = 'where A.DOCDATE>=STARTDATE and A.DOCDATE<=ENDDATE and B.BALNCTYP=BALANCETYPE)'  else  select @vAgingPeriod2 = 'where ((A.DUEDATE>' + @cMinDate + ' and A.DUEDATE>=STARTDATE and A.DUEDATE<=ENDDATE)   or (A.DUEDATE=' + @cMinDate + ' and A.DOCDATE>=STARTDATE and A.DOCDATE<=ENDDATE))   and B.BALNCTYP=BALANCETYPE)'  end  else  if @iAgeByDocDate = 1  begin  select @vAgingPeriod1 = '(select  case when A.RMDTYPAL <> 0 then PERIODID  else 2 end from #EndingPeriodDates '  select @vAgingPeriod2 = 'where A.DOCDATE>=STARTDATE and A.DOCDATE<=ENDDATE and B.BALNCTYP=BALANCETYPE)'  end  else  begin  select @vAgingPeriod1 = '(select  case when A.RMDTYPAL <> 0 then PERIODID  else 2 end from #EndingPeriodDates   where (A.RMDTYPAL>=' + str(@RMDOCCRMEMO) + ' and A.RMDTYPAL<=' + str(@RMDOCCASH)   + ' and A.DOCDATE>=STARTDATE and A.DOCDATE<=ENDDATE and B.BALNCTYP=BALANCETYPE)'   select @vAgingPeriod2 = ' or (A.RMDTYPAL<' + str(@RMDOCCRMEMO) + ' and ((A.DUEDATE>' + @cMinDate + ' and   A.DUEDATE>=STARTDATE and A.DUEDATE<=ENDDATE) or (A.DUEDATE=' + @cMinDate + ' and A.DOCDATE>=STARTDATE and   A.DOCDATE<=ENDDATE)) and B.BALNCTYP=BALANCETYPE))'  end   select @vCustomerNumberRestrict = ' and A.CUSTNMBR between ''' +  ltrim(@I_sBeginCustNumber) + ''' and ''' + ltrim(@I_sEndCustNumber) + ''' '   select @cExecStringIncBalType = convert(char(1),@I_iBalanceType )   select @vRestrictBalanceType = '((' + @cExecStringIncBalType + ' = 0) or ('  + @cExecStringIncBalType + ' = 1 and B.BALNCTYP = 0) or ('   + @cExecStringIncBalType + ' = 2 and B.BALNCTYP = 1))'    select @vStatementCycleRestrict = ' and power(2,STMTCYCL - 1) & ' +   str(@I_iStatementCycle) + ' = power(2,STMTCYCL - 1)'   select @vBalanceForward = 'A.RMDTYPAL = ' + str(@RMBALFWD)   if @UsingCustomRange = 0   begin  exec('  insert into #TempAgingTable  (CUSTNUMBR,  DOCNUMBR,  DOCTYPE,  BALANCETYPE,  AGINGPERIOD,  DOCAMOUNT)  select  A.CUSTNMBR,  A.DOCNUMBR,  A.RMDTYPAL,  B.BALNCTYP,  ' + @vAgingPeriod1 + @vAgingPeriod2 +  ',  case when ' +  @vBalanceForward + ' then  A.ORTRXAMT  else  case when isnull(C.ORCTRXAM,1.00 ) <> 0.00 then  case when A.RMDTYPAL = 6 then  0.00  else  A.CURTRXAM  end  else  0.00  end  end  from  RM20101 A  join RM00101 B on A.CUSTNMBR = B.CUSTNMBR  left outer join MC020102 C on A.DOCNUMBR = C.DOCNUMBR and   A.RMDTYPAL = C.RMDTYPAL  where ' + @vRestrictBalanceType  + @vCustomerNumberRestrict  + @vStatementCycleRestrict)   delete   #TempAgingTable  where   DOCTYPE = @RMDOCSCHPYMNT  end  else  begin  exec('  insert into #TempAgingTable  (CUSTNUMBR,  DOCNUMBR,  DOCTYPE,  BALANCETYPE,  AGINGPERIOD,  DOCAMOUNT)  select  A.CUSTNMBR,  A.DOCNUMBR,  A.RMDTYPAL,  B.BALNCTYP,  ' + @vAgingPeriod1 + @vAgingPeriod2 +  ',  case when ' +  @vBalanceForward + ' then  A.ORTRXAMT  else  case when isnull(C.ORCTRXAM,1.00 ) <> 0.00 then  case when A.RMDTYPAL = 6 then  0.00  else  A.CURTRXAM  end  else  0.00  end  end  from  RM20101 A  join ' + @MarkedTable + ' B on A.CUSTNMBR = B.CUSTNMBR  left outer join MC020102 C on A.DOCNUMBR = C.DOCNUMBR and   A.RMDTYPAL = C.RMDTYPAL  where ' + @vRestrictBalanceType  + @vStatementCycleRestrict)   delete   #TempAgingTable  where   DOCTYPE = @RMDOCSCHPYMNT  end   if @sAgeCrAmts = 0  if @iCompoundFinCHG = 0  if @I_tAgeFinanceCharges = @TRUE  update #TempAgingTable  set AGINGPERIOD =1, DOCAMOUNT = DOCAMOUNT * -1  where DOCTYPE in (@RMDOCCRMEMO,@RMDOCRETURNS,@RMDOCCASH)  else  update #TempAgingTable  set AGINGPERIOD = 1,   DOCAMOUNT =  case when DOCTYPE in (@RMDOCCRMEMO,@RMDOCRETURNS,@RMDOCCASH) then   DOCAMOUNT * - 1  else   DOCAMOUNT  end  where DOCTYPE in (@RMDOCFNCHG,@RMDOCCRMEMO,@RMDOCRETURNS,@RMDOCCASH)  else  update #TempAgingTable  set AGINGPERIOD =1, DOCAMOUNT = DOCAMOUNT * -1  where DOCTYPE in (@RMDOCCRMEMO,@RMDOCRETURNS,@RMDOCCASH)  else  if @iCompoundFinCHG = 0  if @I_tAgeFinanceCharges = @TRUE  update #TempAgingTable  set DOCAMOUNT = DOCAMOUNT * -1  where DOCTYPE in (@RMDOCCRMEMO,@RMDOCRETURNS,@RMDOCCASH)  else  update #TempAgingTable  set DOCAMOUNT =  case when DOCTYPE in (@RMDOCCRMEMO,@RMDOCRETURNS,@RMDOCCASH) then   DOCAMOUNT * - 1  else   DOCAMOUNT  end,  AGINGPERIOD =   case when DOCTYPE = @RMDOCFNCHG then   1  else   AGINGPERIOD  end   where DOCTYPE in (@RMDOCFNCHG,@RMDOCCRMEMO,@RMDOCRETURNS,@RMDOCCASH)  else  update #TempAgingTable  set DOCAMOUNT = DOCAMOUNT * -1  where DOCTYPE in (@RMDOCCRMEMO,@RMDOCRETURNS,@RMDOCCASH)   update RM20101   set AGNGBUKT = AGINGPERIOD  from RM20101,#TempAgingTable  where  RM20101.DOCNUMBR = #TempAgingTable.DOCNUMBR  and  RM20101.RMDTYPAL = #TempAgingTable.DOCTYPE   insert into #SumAgingTable  (CUSTNUMBR,  AGINGPERIOD,  AGINGDATE,  DOCAMOUNT)  select  CUSTNUMBR,  AGINGPERIOD,  @I_dAgingDate,  SUM(DOCAMOUNT)  from  #TempAgingTable  group by  CUSTNUMBR,  AGINGPERIOD   exec('update RM00103  set AGPERAMT_1 = isnull((select DOCAMOUNT from #SumAgingTable WITH(INDEX(AK1SumAgingTable)) where AGINGPERIOD = 1 and RM00103.CUSTNMBR = #SumAgingTable.CUSTNUMBR),0.00),  AGPERAMT_2 = isnull((select DOCAMOUNT from #SumAgingTable WITH(INDEX(AK1SumAgingTable)) where AGINGPERIOD = 2 and RM00103.CUSTNMBR = #SumAgingTable.CUSTNUMBR),0.00),  AGPERAMT_3 = isnull((select DOCAMOUNT from #SumAgingTable WITH(INDEX(AK1SumAgingTable)) where AGINGPERIOD = 3 and RM00103.CUSTNMBR = #SumAgingTable.CUSTNUMBR),0.00),  AGPERAMT_4 = isnull((select DOCAMOUNT from #SumAgingTable WITH(INDEX(AK1SumAgingTable)) where AGINGPERIOD = 4 and RM00103.CUSTNMBR = #SumAgingTable.CUSTNUMBR),0.00),  AGPERAMT_5 = isnull((select DOCAMOUNT from #SumAgingTable WITH(INDEX(AK1SumAgingTable)) where AGINGPERIOD = 5 and RM00103.CUSTNMBR = #SumAgingTable.CUSTNUMBR),0.00),  AGPERAMT_6 = isnull((select DOCAMOUNT from #SumAgingTable WITH(INDEX(AK1SumAgingTable)) where AGINGPERIOD = 6 and RM00103.CUSTNMBR = #SumAgingTable.CUSTNUMBR),0.00),  AGPERAMT_7 = isnull((select DOCAMOUNT from #SumAgingTable WITH(INDEX(AK1SumAgingTable)) where AGINGPERIOD = 7 and RM00103.CUSTNMBR = #SumAgingTable.CUSTNUMBR),0.00),  CUSTBLNC = isnull((select sum(DOCAMOUNT) from #SumAgingTable WITH(INDEX(AK1SumAgingTable)) where RM00103.CUSTNMBR = #SumAgingTable.CUSTNUMBR),0.00),  LASTAGED = AGINGDATE  from RM00103,#SumAgingTable  where  RM00103.CUSTNMBR = #SumAgingTable.CUSTNUMBR')   insert into #FinanceCharge  (CUSTNUMBR,  BALANCETYPE,  DOCAMOUNT)  select  CUSTNUMBR,  BALANCETYPE,  SUM(DOCAMOUNT)  from  #TempAgingTable  where  DOCTYPE = @RMDOCFNCHG  group by  CUSTNUMBR,  BALANCETYPE   update RM00103 set  UPFCHYTD =  case when BALANCETYPE = 1 then   case when CUSTBLNC > 0 then  case when  #FinanceCharge.DOCAMOUNT > RM00103.CUSTBLNC then  CUSTBLNC  else  case when DOCAMOUNT < 0 then  0.00  else  DOCAMOUNT  end  end  else   0.00  end  else  DOCAMOUNT  end  from RM00103,#FinanceCharge  where RM00103.CUSTNMBR = #FinanceCharge.CUSTNUMBR   update RM40101  set LDBLFAGD = @I_dAgingDate  where exists (select 1 from #TempAgingTable where BALANCETYPE = 1)   update RM40101  set LDOITAGD = @I_dAgingDate  where exists (select 1 from #TempAgingTable where BALANCETYPE = 0)  end  drop table #FinanceCharge drop table #TempAgingTable drop table #SumAgingTable drop table #EndingPeriodDates   return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[rmAgeCustomer] TO [DYNGRP]
GO