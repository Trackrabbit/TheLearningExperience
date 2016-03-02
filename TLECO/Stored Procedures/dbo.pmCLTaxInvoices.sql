SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[pmCLTaxInvoices]  @I_cUserID char(15) = NULL,  @I_cFileName1 varchar(40) = NULL,  @O_iErrorState int  = NULL output as  declare  @iError int,    @iStatus int,    @FALSE int,  @tLoop tinyint  select  @O_iErrorState = 0,  @iStatus  = 0,  @FALSE  = 0  while (@tLoop is NULL) begin  select @tLoop = 1   if @I_cUserID is NULL   or @I_cFileName1 is NULL  begin  select @O_iErrorState = 20845  break  end   update  PM10000  set  PM10000.TaxInvReqd = 1  where  PM10000.TaxInvReqd = 0  and  EXISTS  (select  1  from  PM30800  where  PM30800.VCHRNMBR = PM10000.VCHNUMWK   and PM30800.DOCTYPE = PM10000.DOCTYPE )   update  PM20000  set  PM20000.TaxInvReqd = 1  where  PM20000.TaxInvReqd = 0  and  EXISTS  (select  1  from  PM30800  where  PM30800.VCHRNMBR = PM20000.VCHRNMBR  and PM30800.DOCTYPE = PM20000.DOCTYPE )   update  PM30200  set  PM30200.TaxInvReqd = 1  where  PM30200.TaxInvReqd = 0  and  EXISTS  (select  1  from  PM30800  where  PM30800.VCHRNMBR = PM30200.VCHRNMBR  and PM30800.DOCTYPE = PM30200.DOCTYPE )   insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select  VCHNUMWK,  0,  VENDORID  from  PM10000  where  TaxInvReqd = 1  and  NOT EXISTS(  select  1  from  PM30800  where  PM30800.VCHRNMBR = PM10000.VCHNUMWK  and PM30800.DOCTYPE = PM10000.DOCTYPE )   if @@rowcount <> 0  begin  insert into  PM30800(  VENDORID,  VCHRNMBR,  DOCTYPE,  DOCNUMBR,  Tax_Date,  TaxInvRecvd,  GSTDSAMT )   select  VENDORID,  VCHNUMWK,  DOCTYPE,  DOCNUMBR,  Tax_Date,  @FALSE,  ( select isnull( sum(PM10500.TAXAMNT), 0.00)  from  PM10500 with (NOLOCK)  JOIN TX00201 with (NOLOCK)  ON (PM10500.TAXDTLID = TX00201.TAXDTLID)  where  PM10500.VCHRNMBR = PM10000.VCHNUMWK  and TX00201.TaxInvReqd = 1 )  from  PM10000  where  TaxInvReqd = 1  and  NOT EXISTS(  select  1  from  PM30800  where  PM30800.VCHRNMBR = PM10000.VCHNUMWK  and PM30800.DOCTYPE = PM10000.DOCTYPE )   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  NULL,  10331,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select  VCHRNMBR,  0,  VENDORID  from  PM20000  where  TaxInvReqd = 1  and  NOT EXISTS(  select  1  from  PM30800  where  PM30800.VCHRNMBR = PM20000.VCHRNMBR  and PM30800.DOCTYPE = PM20000.DOCTYPE)   if @@rowcount <> 0  begin  insert into  PM30800(  VENDORID,  VCHRNMBR,  DOCTYPE,  DOCNUMBR,  Tax_Date,  TaxInvRecvd,  GSTDSAMT )   select  VENDORID,  VCHRNMBR,  DOCTYPE,  DOCNUMBR,  Tax_Date,  @FALSE,  ( select isnull( sum(PM10500.TAXAMNT), 0.00)  from  PM10500 with (NOLOCK)  JOIN TX00201 with (NOLOCK)  ON (PM10500.TAXDTLID = TX00201.TAXDTLID)  where  PM10500.VCHRNMBR = PM20000.VCHRNMBR  and TX00201.TaxInvReqd = 1 )  from  PM20000  where  TaxInvReqd = 1  and  NOT EXISTS(  select  1  from  PM30800  where  PM30800.VCHRNMBR = PM20000.VCHRNMBR  and PM30800.DOCTYPE = PM20000.DOCTYPE)   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  NULL,  10331,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select  VCHRNMBR,  0,  VENDORID  from  PM30200  where  TaxInvReqd = 1  and  NOT EXISTS(  select  1  from  PM30800  where  PM30800.VCHRNMBR = PM30200.VCHRNMBR  and PM30800.DOCTYPE = PM30200.DOCTYPE)   if @@rowcount <> 0  begin  insert into  PM30800(  VENDORID,  VCHRNMBR,  DOCTYPE,  DOCNUMBR,  Tax_Date,  TaxInvRecvd,  GSTDSAMT )   select  VENDORID,  VCHRNMBR,  DOCTYPE,  DOCNUMBR,  Tax_Date,  @FALSE,  ( select isnull( sum(PM30700.TAXAMNT), 0.00)  from  PM30700 with (NOLOCK)  JOIN TX00201 with (NOLOCK)  ON (PM30700.TAXDTLID = TX00201.TAXDTLID)  where  PM30700.VCHRNMBR = PM30200.VCHRNMBR  and TX00201.TaxInvReqd = 1 )  from  PM30200  where  TaxInvReqd = 1  and  NOT EXISTS(  select  1  from  PM30800  where  PM30800.VCHRNMBR = PM30200.VCHRNMBR  and PM30800.DOCTYPE = PM30200.DOCTYPE)   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  NULL,  10331,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end    insert into  #CNTRLNUMTEMP(  CNTRLNUM,  DOCTYPE,  VENDORID )  select  VCHRNMBR,  0,  VENDORID  from  PM30800  where  ( NOT EXISTS(  select  1  from  PM10000  where  PM30800.VCHRNMBR = PM10000.VCHNUMWK )  and  NOT EXISTS(  select  1  from  PM20000  where  PM30800.VCHRNMBR = PM20000.VCHRNMBR  and PM30800.DOCTYPE = PM20000.DOCTYPE)  and  NOT EXISTS(  select  1  from  PM30200  where  PM30800.VCHRNMBR = PM30200.VCHRNMBR  and PM30800.DOCTYPE = PM30200.DOCTYPE) )   if @@rowcount <> 0  begin  delete  PM30800  where  ( NOT EXISTS(  select  1  from  PM10000  where  PM30800.VCHRNMBR = PM10000.VCHNUMWK )  and  NOT EXISTS(  select  1  from  PM20000  where  PM30800.VCHRNMBR = PM20000.VCHRNMBR  and PM30800.DOCTYPE = PM20000.DOCTYPE)  and  NOT EXISTS(  select  1  from  PM30200  where  PM30800.VCHRNMBR = PM30200.VCHRNMBR  and PM30800.DOCTYPE = PM30200.DOCTYPE) )   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  NULL,  17638,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end  end   return(@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[pmCLTaxInvoices] TO [DYNGRP]
GO