SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[ivCreateHistoricalIVTrialBalance]  @I_sTableName char(10) = NULL,  @I_nSortBy tinyint  = NULL,  @I_nReceiptOptions    tinyint  = NULL,  @I_sStartItemNumber char(31) = NULL,  @I_sEndItemNumber char(31) = NULL,  @I_sStartAccountNumber char(128) = NULL,  @I_sEndAccountNumber char(128) = NULL,  @I_sStartLocationCode char(11) = NULL,  @I_sEndLocationCode char(11) = NULL,  @I_nStartQTYType int   = NULL,  @I_nEndQTYType int   = NULL,  @I_dtStart datetime = NULL,  @I_dtEnd datetime = NULL,  @sStartClass char(11) = NULL,  @sEndClass char(11) = NULL,  @sStartGenericDesc char(11) = NULL,  @sEndGenericDesc char(11) = NULL,  @I_fUseGLPostDate tinyint  = NULL,  @I_fIncludeZeroQtyItems tinyint  = NULL,  @O_SQL_Error_State          int   = NULL   output  as   declare @iStatus int, @iError int, @RS_Account int, @RE_Account int,  @numsegs int, @cnt tinyint, @acctseg char(40), @acctsegd varchar(400), @acctsegl varchar(400), @acctsegt varchar(4000), @Iacctsegd varchar(400),  @I_dtStartSum datetime  select  @O_SQL_Error_State = 0,  @iStatus = 0,  @iError = 0, @RS_Account = 0, @RE_Account = 0  CREATE TABLE #I_LOCAL (   ITEMNMBR char(31) NOT NULL,   LOCNCODE char(11) NOT NULL,   DOCDATE datetime NOT NULL default '01/01/1900' CHECK (DATEPART(hour,DOCDATE) = 0 and DATEPART(minute,DOCDATE) = 0 and DATEPART(second,DOCDATE) = 0 and DATEPART(millisecond,DOCDATE) = 0),   GLPOSTDT datetime NOT NULL default '01/01/1900' CHECK (DATEPART(hour,GLPOSTDT) = 0 and DATEPART(minute,GLPOSTDT) = 0 and DATEPART(second,GLPOSTDT) = 0 and DATEPART(millisecond,GLPOSTDT) = 0),   JRNENTRY int NOT NULL default 0,   SEQNUMBR int NOT NULL default 0,   ITEMDESC char(101) NOT NULL default '',   ITMGEDSC char(11) NOT NULL default '',   DOCNUMBR char(21) NOT NULL default '',   DOCTYPE smallint NOT NULL default 0,   TRXSORCE char(13) NOT NULL default '',   TRXREFERENCE smallint default 0,   HSTMODUL char(3) NOT NULL default '',   TRXQTY numeric(19,5) NOT NULL default 0,   VARIANCEQTY numeric(19,5) NOT NULL default 0,   QTYTYPE smallint NOT NULL default 0,   UNITCOST numeric(19,5) NOT NULL default 0,   EXTDCOST numeric(19,5) NOT NULL default 0,   CRDTAMNT numeric(19,5) NOT NULL default 0,   DEBITAMT numeric(19,5) NOT NULL default 0,   IsLandedCostTrx tinyint NOT NULL default 0,   IsVarianceTrx tinyint NOT NULL default 0,   IsOverrideReceipt tinyint NOT NULL default 0,   VCTNMTHD smallint NOT NULL default 0,   ASOFDATE datetime NOT NULL  default '01/01/1900' CHECK (DATEPART(hour,ASOFDATE) = 0 and DATEPART(minute,ASOFDATE) = 0 and DATEPART(second,ASOFDATE) = 0 and DATEPART(millisecond,ASOFDATE) = 0),   STR1 char(1) NOT NULL default '',   DECPLQTY smallint NOT NULL default 0,   DECPLCUR smallint NOT NULL default 0,   ACTINDX int NOT NULL default 0,  DEX_ROW_ID int identity NOT NULL)  CREATE INDEX Idx1 on #I_LOCAL (ACTINDX)  if (  @I_sTableName is NULL or  @I_nSortBy is NULL or  @I_sStartItemNumber is NULL or  @I_sEndItemNumber is NULL or  @I_sStartAccountNumber is NULL or  @I_sEndAccountNumber is NULL or  @I_sStartLocationCode is NULL or  @I_sEndLocationCode is NULL or  @I_nStartQTYType is NULL or  @I_nEndQTYType is NULL or  @I_dtStart is NULL or  @I_dtEnd is NULL or  @sStartClass is NULL or  @sEndClass is NULL or  @sStartGenericDesc is NULL or  @sEndGenericDesc is NULL or  @I_fUseGLPostDate is NULL or  @I_fIncludeZeroQtyItems is NULL )  begin  select @O_SQL_Error_State = 26000  return end  If (@I_sStartAccountNumber like '%1%' or @I_sStartAccountNumber like '%2%' or @I_sStartAccountNumber like '%3%' or @I_sStartAccountNumber like '%4%'  or @I_sStartAccountNumber like '%5%' or @I_sStartAccountNumber like '%6%' or @I_sStartAccountNumber like '%7%' or @I_sStartAccountNumber like '%8%'  or @I_sStartAccountNumber like '%9%' or @I_sStartAccountNumber like '%0%')  Begin  select @RS_Account = ACTINDX from GL00105 where ACTNUMST = rtrim(@I_sStartAccountNumber)   End Else  Begin  set @RS_Account = 0  End  If (@I_sEndAccountNumber like '%1%' or @I_sEndAccountNumber like '%2%' or @I_sEndAccountNumber like '%3%' or @I_sEndAccountNumber like '%4%'  or @I_sEndAccountNumber like '%5%' or @I_sEndAccountNumber like '%6%' or @I_sEndAccountNumber like '%7%' or @I_sEndAccountNumber like '%8%'  or @I_sEndAccountNumber like '%9%' or @I_sEndAccountNumber like '%0%')  Begin  select @RE_Account = ACTINDX from GL00105 where ACTNUMST = rtrim(@I_sEndAccountNumber)   End Else  Begin  set @RE_Account = 999999999  End  select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  select @numsegs = (select MXNUMSEG from DYNAMICS..SY003001)  select  @cnt = 1,  @acctseg = '',  @acctsegd = ''  while @cnt <= @numsegs  Begin  select @acctseg = ' ACTNUMBR_' + ltrim(STR(@cnt)) + ', ' + char(13)  set @acctsegl = rtrim(@acctseg)  select @cnt = @cnt + 1  set @acctsegd = @acctsegd + @acctsegl  End  set @acctsegd = ltrim(rtrim(@acctsegd))  select  @cnt = 1,  @acctseg = '',  @acctsegl = '',  @Iacctsegd = ''  while @cnt <= @numsegs  Begin  select @acctseg = ' b.ACTNUMBR_' + ltrim(STR(@cnt)) + ', ' + char(13)  set @acctsegl = rtrim(@acctseg)  select @cnt = @cnt + 1  set @Iacctsegd = @Iacctsegd + @acctsegl  End  set @Iacctsegd = ltrim(rtrim(@Iacctsegd))  If @I_nReceiptOptions = 1     Begin  If @I_fUseGLPostDate = 0      Begin   If @I_dtStart <> '01/01/1900'  Begin  set @I_dtStartSum = @I_dtStart - 1   If @I_nSortBy = 1    Begin  insert #I_LOCAL (ACTINDX, ITEMNMBR, LOCNCODE, QTYTYPE, TRXQTY, EXTDCOST, DEBITAMT, CRDTAMNT)   select isNULL(a.IVIVINDX,0), isNULL(a.ITEMNMBR,''), isNULL(a.LOCNCODE,''), isNULL(a.QTYTYPE,0),   isNULL(sum(a.TRXQTYInBase),0), isNULL(sum(EXTDCOST),0), isNULL(sum(a.DEBITAMT),0), isNULL(sum(a.CRDTAMNT),0)  from SEE30303 a inner join IV00101 b  on a.ITEMNMBR = b.ITEMNMBR inner join GL00105 c  on a.IVIVINDX = c.ACTINDX  where a.DOCDATE <= @I_dtStartSum and  a.ITEMNMBR between @I_sStartItemNumber and @I_sEndItemNumber and  a.QTYTYPE between @I_nStartQTYType and @I_nEndQTYType and  a.LOCNCODE between @I_sStartLocationCode and @I_sEndLocationCode and  c.ACTNUMST between @I_sStartAccountNumber and @I_sEndAccountNumber and  b.ITMCLSCD between @sStartClass and @sEndClass and  b.ITMGEDSC between @sStartGenericDesc and @sEndGenericDesc  group by a.ITEMNMBR, a.IVIVINDX, a.LOCNCODE, a.QTYTYPE  order by a.ITEMNMBR, a.IVIVINDX, a.LOCNCODE, a.QTYTYPE   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  End  Else  Begin    insert #I_LOCAL (ACTINDX, ITEMNMBR, LOCNCODE, QTYTYPE, TRXQTY, EXTDCOST, DEBITAMT, CRDTAMNT)   select isNULL(a.IVIVINDX,0), isNULL(a.ITEMNMBR,''), isNULL(a.LOCNCODE,''), isNULL(a.QTYTYPE,0),   isNULL(sum(a.TRXQTYInBase),0), isNULL(sum(EXTDCOST),0), isNULL(sum(a.DEBITAMT),0), isNULL(sum(a.CRDTAMNT),0)  from SEE30303 a inner join IV00101 b  on a.ITEMNMBR = b.ITEMNMBR inner join GL00105 c  on a.IVIVINDX = c.ACTINDX  where a.DOCDATE <= @I_dtStartSum and  a.ITEMNMBR between @I_sStartItemNumber and @I_sEndItemNumber and  a.QTYTYPE between @I_nStartQTYType and @I_nEndQTYType and  a.LOCNCODE between @I_sStartLocationCode and @I_sEndLocationCode and  c.ACTNUMST between @I_sStartAccountNumber and @I_sEndAccountNumber and  b.ITMCLSCD between @sStartClass and @sEndClass and  b.ITMGEDSC between @sStartGenericDesc and @sEndGenericDesc  group by a.IVIVINDX, a.ITEMNMBR, a.LOCNCODE, a.QTYTYPE  order by a.IVIVINDX, a.ITEMNMBR, a.LOCNCODE, a.QTYTYPE   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  End   update #I_LOCAL set DOCTYPE = 100, DOCDATE = @I_dtStartSum   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)   End   insert #I_LOCAL ( ITEMNMBR, LOCNCODE, DOCDATE, GLPOSTDT, JRNENTRY, SEQNUMBR, DOCNUMBR, DOCTYPE, TRXSORCE,   TRXREFERENCE, HSTMODUL, TRXQTY, VARIANCEQTY, QTYTYPE, UNITCOST, EXTDCOST, CRDTAMNT, DEBITAMT,   IsLandedCostTrx, IsVarianceTrx,   IsOverrideReceipt, VCTNMTHD, DECPLQTY, DECPLCUR, ACTINDX, ITEMDESC, ITMGEDSC, STR1 )   select a.ITEMNMBR, a.LOCNCODE, a.DOCDATE, a.GLPOSTDT, a.JRNENTRY, a.SEQNUMBR, a.DOCNUMBR, a.DOCTYPE, a.TRXSORCE,   a.TRXREFERENCE, a.HSTMODUL,   case   when a.DOCTYPE = 100 then isNULL(a.TRXQTYInBase,0)  when a.DOCTYPE < 14 then isNULL(a.TRXQTYInBase,0)   else 0   end,   a.VARIANCEQTY, a.QTYTYPE, a.UNITCOST, a.EXTDCOST, a.CRDTAMNT, a.DEBITAMT,   case when a.DOCTYPE = 12 then 1 else 0 end, case when a.DOCTYPE = 11 then 1 else 0 end,  a.IsOverrideReceipt, a.VCTNMTHD, a.DECPLQTY, a.DECPLCUR, a.IVIVINDX, b.ITEMDESC, b.ITMGEDSC,  case   when a.QTYTYPE in (2,3,4,5) and a.TRXREFERENCE = 104 then '+'    when a.DOCTYPE = 8 then '>'             when a.DOCTYPE = 9 then '#'             when a.DOCTYPE = 10 then '<'            when a.DOCTYPE = 11 then '*'            when a.DOCTYPE = 12 then '^'            when a.DOCTYPE = 13 then '='            when a.HSTMODUL = 'POP' and a.DOCTYPE = 9 and exists (select LCLINENUMBER from POP10600 where POPRCTNM = a.DOCNUMBR and LCLINENUMBER = 0) then '*'    when a.HSTMODUL = 'POP' and a.DOCTYPE = 9 and exists (select LCLINENUMBER from POP10600 where POPRCTNM = a.DOCNUMBR and LCLINENUMBER <> 0) then '^'   else ''  end  from SEE30303 a inner join IV00101 b on a.ITEMNMBR = b.ITEMNMBR inner join GL00105 c on a.IVIVINDX = c.ACTINDX  where a.DOCDATE between @I_dtStart and @I_dtEnd and  a.ITEMNMBR between @I_sStartItemNumber and @I_sEndItemNumber and  a.QTYTYPE between @I_nStartQTYType and @I_nEndQTYType and  a.LOCNCODE between @I_sStartLocationCode and @I_sEndLocationCode and  c.ACTNUMST between @I_sStartAccountNumber and @I_sEndAccountNumber and  b.ITMCLSCD between @sStartClass and @sEndClass and  b.ITMGEDSC between @sStartGenericDesc and @sEndGenericDesc   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)   End  Else   Begin  If @I_dtStart <> '01/01/1900'  Begin  set @I_dtStartSum = @I_dtStart - 1   If @I_nSortBy = 1    Begin  insert #I_LOCAL (ACTINDX, ITEMNMBR, LOCNCODE, QTYTYPE, TRXQTY, EXTDCOST, DEBITAMT, CRDTAMNT)   select isNULL(a.IVIVINDX,0), isNULL(a.ITEMNMBR,''), isNULL(a.LOCNCODE,''), isNULL(a.QTYTYPE,0),   isNULL(sum(a.TRXQTYInBase),0), isNULL(sum(a.EXTDCOST),0), isNULL(sum(a.DEBITAMT),0), isNULL(sum(a.CRDTAMNT),0)  from SEE30303 a inner join IV00101 b  on a.ITEMNMBR = b.ITEMNMBR inner join GL00105 c   on a.IVIVINDX = c.ACTINDX  where a.GLPOSTDT <= @I_dtStartSum and  a.ITEMNMBR between @I_sStartItemNumber and @I_sEndItemNumber and  a.QTYTYPE between @I_nStartQTYType and @I_nEndQTYType and  a.LOCNCODE between @I_sStartLocationCode and @I_sEndLocationCode and  c.ACTNUMST between @I_sStartAccountNumber and @I_sEndAccountNumber and  b.ITMCLSCD between @sStartClass and @sEndClass and  b.ITMGEDSC between @sStartGenericDesc and @sEndGenericDesc  group by a.ITEMNMBR, a.IVIVINDX, a.LOCNCODE, a.QTYTYPE  order by a.ITEMNMBR, a.IVIVINDX, a.LOCNCODE, a.QTYTYPE   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  End  Else  Begin    insert #I_LOCAL (ACTINDX, ITEMNMBR, LOCNCODE, QTYTYPE, TRXQTY, EXTDCOST, DEBITAMT, CRDTAMNT)   select isNULL(a.IVIVINDX,0), isNULL(a.ITEMNMBR,''), isNULL(a.LOCNCODE,''), isNULL(a.QTYTYPE,0),   isNULL(sum(a.TRXQTYInBase),0), isNULL(sum(EXTDCOST),0), isNULL(sum(a.DEBITAMT),0), isNULL(sum(a.CRDTAMNT),0)  from SEE30303 a inner join IV00101 b  on a.ITEMNMBR = b.ITEMNMBR inner join GL00105 c   on a.IVIVINDX = c.ACTINDX  where a.GLPOSTDT <= @I_dtStartSum and  a.ITEMNMBR between @I_sStartItemNumber and @I_sEndItemNumber and  a.QTYTYPE between @I_nStartQTYType and @I_nEndQTYType and  a.LOCNCODE between @I_sStartLocationCode and @I_sEndLocationCode and  c.ACTNUMST between @I_sStartAccountNumber and @I_sEndAccountNumber and  b.ITMCLSCD between @sStartClass and @sEndClass and  b.ITMGEDSC between @sStartGenericDesc and @sEndGenericDesc  group by a.IVIVINDX, a.ITEMNMBR, a.LOCNCODE, a.QTYTYPE  order by a.IVIVINDX, a.ITEMNMBR, a.LOCNCODE, a.QTYTYPE   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  End   update #I_LOCAL set DOCTYPE = 100, DOCDATE = @I_dtStartSum   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)   End   insert #I_LOCAL ( ITEMNMBR, LOCNCODE, DOCDATE, GLPOSTDT, JRNENTRY, SEQNUMBR, DOCNUMBR, DOCTYPE, TRXSORCE,   TRXREFERENCE, HSTMODUL, TRXQTY, VARIANCEQTY, QTYTYPE, UNITCOST, EXTDCOST, CRDTAMNT, DEBITAMT,   IsLandedCostTrx, IsVarianceTrx,   IsOverrideReceipt, VCTNMTHD, DECPLQTY, DECPLCUR, ACTINDX, ITEMDESC, ITMGEDSC, STR1 )   select a.ITEMNMBR, a.LOCNCODE, a.GLPOSTDT, a.GLPOSTDT, a.JRNENTRY, a.SEQNUMBR, a.DOCNUMBR, a.DOCTYPE, a.TRXSORCE,   a.TRXREFERENCE, a.HSTMODUL,   case   when a.DOCTYPE = 100 then isNULL(a.TRXQTYInBase,0)  when a.DOCTYPE < 14 then isNULL(a.TRXQTYInBase,0)   else 0   end,   a.VARIANCEQTY, a.QTYTYPE, a.UNITCOST, a.EXTDCOST, a.CRDTAMNT, a.DEBITAMT,   case when a.DOCTYPE = 12 then 1 else 0 end, case when a.DOCTYPE = 11 then 1 else 0 end,  a.IsOverrideReceipt, a.VCTNMTHD, a.DECPLQTY, a.DECPLCUR, a.IVIVINDX, b.ITEMDESC, b.ITMGEDSC,  case   when a.QTYTYPE in (2,3,4,5) and a.TRXREFERENCE = 104 then '+'    when a.DOCTYPE = 8 then '>'             when a.DOCTYPE = 9 then '#'             when a.DOCTYPE = 10 then '<'            when a.DOCTYPE = 11 then '*'            when a.DOCTYPE = 12 then '^'            when a.DOCTYPE = 13 then '='            when a.HSTMODUL = 'POP' and a.DOCTYPE = 9 and exists (select LCLINENUMBER from POP10600 where POPRCTNM = a.DOCNUMBR and LCLINENUMBER = 0) then '*'    when a.HSTMODUL = 'POP' and a.DOCTYPE = 9 and exists (select LCLINENUMBER from POP10600 where POPRCTNM = a.DOCNUMBR and LCLINENUMBER <> 0) then '^'   else ''  end  from SEE30303 a inner join IV00101 b on a.ITEMNMBR = b.ITEMNMBR inner join GL00105 c on a.IVIVINDX = c.ACTINDX  where a.GLPOSTDT between @I_dtStart and @I_dtEnd and  a.ITEMNMBR between @I_sStartItemNumber and @I_sEndItemNumber and  a.QTYTYPE between @I_nStartQTYType and @I_nEndQTYType and  a.LOCNCODE between @I_sStartLocationCode and @I_sEndLocationCode and  c.ACTNUMST between @I_sStartAccountNumber and @I_sEndAccountNumber and  b.ITMCLSCD between @sStartClass and @sEndClass and  b.ITMGEDSC between @sStartGenericDesc and @sEndGenericDesc   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)   End   update #I_LOCAL set SEQNUMBR = - DEX_ROW_ID  where SEQNUMBR = 0   update a set a.DECPLQTY = b. DECPLQTY, a.DECPLCUR = b.DECPLCUR, a.ITMGEDSC = b.ITMGEDSC, a.ITEMDESC = b.ITEMDESC  from #I_LOCAL a inner join IV00101 b on  a.ITEMNMBR = b.ITEMNMBR   End  Else   Begin  If @I_fUseGLPostDate = 0   Begin  If @I_nSortBy = 1  Begin   insert #I_LOCAL (ACTINDX, ITEMNMBR, LOCNCODE, QTYTYPE, TRXQTY, EXTDCOST)   select isNULL(a.IVIVINDX,0), isNULL(a.ITEMNMBR,''), isNULL(a.LOCNCODE,''), isNULL(a.QTYTYPE,0),   isNULL(sum(a.TRXQTYInBase),0), isNULL(sum(a.EXTDCOST),0)  from SEE30303 a inner join IV00101 b  on a.ITEMNMBR = b.ITEMNMBR inner join GL00105 c   on a.IVIVINDX = c.ACTINDX  where a.DOCDATE <= @I_dtEnd and  a.ITEMNMBR between @I_sStartItemNumber and @I_sEndItemNumber and  a.QTYTYPE between @I_nStartQTYType and @I_nEndQTYType and  a.LOCNCODE between @I_sStartLocationCode and @I_sEndLocationCode and  c.ACTNUMST between @I_sStartAccountNumber and @I_sEndAccountNumber and  b.ITMCLSCD between @sStartClass and @sEndClass and  b.ITMGEDSC between @sStartGenericDesc and @sEndGenericDesc  group by a.ITEMNMBR, a.IVIVINDX, a.LOCNCODE, a.QTYTYPE  order by a.ITEMNMBR, a.IVIVINDX, a.LOCNCODE, a.QTYTYPE   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  End  Else   Begin  insert #I_LOCAL (ACTINDX, ITEMNMBR, LOCNCODE, QTYTYPE, TRXQTY, DEBITAMT, CRDTAMNT)   select isNULL(a.IVIVINDX,0), isNULL(a.ITEMNMBR,''), isNULL(a.LOCNCODE,''), isNULL(a.QTYTYPE,0),   isNULL(sum(a.TRXQTYInBase),0), isNULL(sum(a.DEBITAMT),0), isNULL(sum(a.CRDTAMNT),0)  from SEE30303 a inner join IV00101 b  on a.ITEMNMBR = b.ITEMNMBR inner join GL00105 c   on a.IVIVINDX = c.ACTINDX  where a.DOCDATE <= @I_dtEnd and  a.ITEMNMBR between @I_sStartItemNumber and @I_sEndItemNumber and  a.QTYTYPE between @I_nStartQTYType and @I_nEndQTYType and  a.LOCNCODE between @I_sStartLocationCode and @I_sEndLocationCode and  c.ACTNUMST between @I_sStartAccountNumber and @I_sEndAccountNumber and  b.ITMCLSCD between @sStartClass and @sEndClass and  b.ITMGEDSC between @sStartGenericDesc and @sEndGenericDesc  group by a.IVIVINDX, a.ITEMNMBR, a.LOCNCODE, a.QTYTYPE  order by a.IVIVINDX, a.ITEMNMBR, a.LOCNCODE, a.QTYTYPE   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  End  End  Else   Begin  If @I_nSortBy = 1  Begin   insert #I_LOCAL (ACTINDX, ITEMNMBR, LOCNCODE, QTYTYPE, TRXQTY, EXTDCOST)   select isNULL(a.IVIVINDX,0), isNULL(a.ITEMNMBR,''), isNULL(a.LOCNCODE,''), isNULL(a.QTYTYPE,0),   isNULL(sum(a.TRXQTYInBase),0), isNULL(sum(a.EXTDCOST),0)  from SEE30303 a inner join IV00101 b  on a.ITEMNMBR = b.ITEMNMBR inner join GL00105 c   on a.IVIVINDX = c.ACTINDX  where a.GLPOSTDT <= @I_dtEnd and  a.ITEMNMBR between @I_sStartItemNumber and @I_sEndItemNumber and  a.QTYTYPE between @I_nStartQTYType and @I_nEndQTYType and  a.LOCNCODE between @I_sStartLocationCode and @I_sEndLocationCode and  c.ACTNUMST between @I_sStartAccountNumber and @I_sEndAccountNumber and  b.ITMCLSCD between @sStartClass and @sEndClass and  b.ITMGEDSC between @sStartGenericDesc and @sEndGenericDesc  group by a.ITEMNMBR, a.IVIVINDX, a.LOCNCODE, a.QTYTYPE  order by a.ITEMNMBR, a.IVIVINDX, a.LOCNCODE, a.QTYTYPE   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  End  Else   Begin  insert #I_LOCAL (ACTINDX, ITEMNMBR, LOCNCODE, QTYTYPE, TRXQTY, DEBITAMT, CRDTAMNT)   select isNULL(a.IVIVINDX,0), isNULL(a.ITEMNMBR,''), isNULL(a.LOCNCODE,''), isNULL(a.QTYTYPE,0),   isNULL(sum(a.TRXQTYInBase),0), isNULL(sum(a.DEBITAMT),0), isNULL(sum(a.CRDTAMNT),0)  from SEE30303 a inner join IV00101 b  on a.ITEMNMBR = b.ITEMNMBR inner join GL00105 c   on a.IVIVINDX = c.ACTINDX  where a.GLPOSTDT <= @I_dtEnd and  a.ITEMNMBR between @I_sStartItemNumber and @I_sEndItemNumber and  a.QTYTYPE between @I_nStartQTYType and @I_nEndQTYType and  a.LOCNCODE between @I_sStartLocationCode and @I_sEndLocationCode and  c.ACTNUMST between @I_sStartAccountNumber and @I_sEndAccountNumber and  b.ITMCLSCD between @sStartClass and @sEndClass and  b.ITMGEDSC between @sStartGenericDesc and @sEndGenericDesc  group by a.IVIVINDX, a.ITEMNMBR, a.LOCNCODE, a.QTYTYPE  order by a.IVIVINDX, a.ITEMNMBR, a.LOCNCODE, a.QTYTYPE   select @iError = @@error   if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End   if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  End  End    update #I_LOCAL set SEQNUMBR = - DEX_ROW_ID  where SEQNUMBR = 0   update a set a.DECPLQTY = b. DECPLQTY, a.DECPLCUR = b.DECPLCUR, a.ITMGEDSC = b.ITMGEDSC, a.ITEMDESC = b.ITEMDESC  from #I_LOCAL a inner join IV00101 b on  a.ITEMNMBR = b.ITEMNMBR   End  exec ('insert into ' + @I_sTableName +   ' ( ' + @acctsegd + ' ITEMNMBR, LOCNCODE, DOCDATE, GLPOSTDT, JRNENTRY, SEQNUMBR, ITEMDESC, ITMGEDSC, DOCNUMBR, DOCTYPE, TRXSORCE,   TRXREFERENCE, HSTMODUL, TRXQTY, VARIANCEQTY, QTYTYPE, UNITCOST, EXTDCOST, CRDTAMNT, DEBITAMT, IsLandedCostTrx,   IsVarianceTrx, IsOverrideReceipt, VCTNMTHD, ASOFDATE, STR1, DECPLQTY, DECPLCUR, ACTINDX)   select   ' + @Iacctsegd + ' a.ITEMNMBR, a.LOCNCODE, a.DOCDATE, a.GLPOSTDT, a.JRNENTRY, a.SEQNUMBR, a.ITEMDESC, a.ITMGEDSC, a.DOCNUMBR, a.DOCTYPE, a.TRXSORCE,   a.TRXREFERENCE, a.HSTMODUL, a.TRXQTY, a.VARIANCEQTY, a.QTYTYPE, a.UNITCOST, a.EXTDCOST, a.CRDTAMNT, a.DEBITAMT, a.IsLandedCostTrx,  a.IsVarianceTrx, a.IsOverrideReceipt, a.VCTNMTHD, '' 01/01/1900 '', a.STR1, a.DECPLQTY, a.DECPLCUR, a.ACTINDX  from   #I_LOCAL a inner join GL00105 b on  a.ACTINDX = b.ACTINDX ')  select @iError = @@error  if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End  if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  return(@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[ivCreateHistoricalIVTrialBalance] TO [DYNGRP]
GO