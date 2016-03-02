SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[mcEuroICUnpostedExists]  @I_cCurrencyID char(15) = NULL,  @I_cIntercompanyID char(5)  = NULL,  @I_tGLRegistered tinyint  = NULL,  @I_tPMRegistered tinyint  = NULL,  @I_sCurrencyIndex smallint = NULL,  @O_cVoucherNumber char(21) = NULL output,  @O_iJournalEntry int  = NULL output,  @O_cBatchNumber char(15) = NULL output,  @O_iErrorState int  = NULL  output  as   declare  @TRUE   tinyint   select   @O_cVoucherNumber = '',   @O_iJournalEntry = 0,  @O_cBatchNumber  = '',  @O_iErrorState   = 0  if @I_cCurrencyID is NULL or  @I_cIntercompanyID is NULL or  @I_tGLRegistered is NULL or  @I_tPMRegistered is NULL or  @I_sCurrencyIndex is NULL  begin  select @O_iErrorState = 21041  return end   select  @TRUE  = 1  if @I_tPMRegistered = @TRUE begin  set ROWCOUNT 1    select   @O_cVoucherNumber = isnull(VCHRNMBR,'')   from   PM10100   where   INTERID =  rtrim(@I_cIntercompanyID)   and  (CURNCYID = rtrim(@I_cCurrencyID)   or ICCURRID = rtrim(@I_cCurrencyID))   and  PSTGSTUS = 0   if @O_cVoucherNumber  <> ''  begin   select   @O_cBatchNumber = isnull(BACHNUMB, '')   from   PM10000   where   VCHNUMWK = rtrim(@O_cVoucherNumber)    set ROWCOUNT 0   return   end    set ROWCOUNT 0  end   if @I_tGLRegistered = @TRUE begin  set ROWCOUNT 1    select   @O_iJournalEntry = isnull(hdr.JRNENTRY,0),  @O_cBatchNumber = isnull(hdr.BACHNUMB,'')   from   GL10000 hdr join GL10001 line on  (hdr.JRNENTRY = line.JRNENTRY   and line.INTERID = rtrim(@I_cIntercompanyID))   where   hdr.CURNCYID = rtrim(@I_cCurrencyID)   and  hdr.ICDISTS = 1  if @O_iJournalEntry  <> 0 and @O_cBatchNumber <> ''  begin  set ROWCOUNT 0   return    end    select   @O_iJournalEntry = isnull(hdr.JRNENTRY,0),  @O_cBatchNumber = isnull(hdr.BACHNUMB ,'')   from   GL10000 hdr join GL10001 line on   (hdr.JRNENTRY = line.JRNENTRY   and line.INTERID = rtrim(@I_cIntercompanyID)   and line.CURRNIDX = @I_sCurrencyIndex)   where   hdr.ICDISTS = 1  if (@O_iJournalEntry  <> 0) and (@O_cBatchNumber <> '')  begin   set ROWCOUNT 0   return   end    set ROWCOUNT 0  end   return   
GO
GRANT EXECUTE ON  [dbo].[mcEuroICUnpostedExists] TO [DYNGRP]
GO