SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icValidateCurrencyForTrx]   @I_iJournalEntry int  = NULL,  @I_cCurrencyID char(15) = NULL,  @O_cIntercompanyID char(5)  = NULL output,  @O_iError int             = NULL  output,  @O_iErrorState          int             = NULL  output  as   declare  @TRUE tinyint,  @INACTIVE            smallint,   @NOACCESS smallint select  @O_cIntercompanyID = '',  @O_iError  = 0,   @O_iErrorState      = 0  if  @I_iJournalEntry is NULL or   @I_cCurrencyID   is NULL begin  select @O_iErrorState = 20949  return end   select  @TRUE = 1,  @INACTIVE = 2,  @NOACCESS = 50  select distinct  @O_cIntercompanyID = isnull(INTERID, '') from  GL10001 gl with (NOLOCK) where  gl.JRNENTRY = @I_iJournalEntry and not exists (   select  1  from  DYNAMICS..MC60100 mc,  DYNAMICS..SY01500 sy  where  gl.INTERID = sy.INTERID   and mc.CURNCYID = @I_cCurrencyID  and mc.CMPANYID = sy.CMPANYID ) if @O_cIntercompanyID <> '' begin  select @O_iError = @NOACCESS  return end  select distinct  @O_cIntercompanyID = isnull(gl.INTERID, '') from  DYNAMICS..MC60100 mc,  DYNAMICS..SY01500 sy,  GL10001 gl with (NOLOCK) where  gl.JRNENTRY = @I_iJournalEntry and gl.INTERID = sy.INTERID  and mc.CURNCYID = @I_cCurrencyID and mc.CMPANYID = sy.CMPANYID and mc.INACTIVE = @TRUE  if @O_cIntercompanyID <> ''  select @O_iError = @INACTIVE  return    
GO
GRANT EXECUTE ON  [dbo].[icValidateCurrencyForTrx] TO [DYNGRP]
GO
