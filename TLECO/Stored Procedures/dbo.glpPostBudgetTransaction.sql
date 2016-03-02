SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glpPostBudgetTransaction]  @I_iSQLSessionID int   = NULL,  @I_iJournalEntry int   = NULL,   @I_cUserID char(15) = NULL,   @I_tPrinting tinyint  = NULL,   @I_tPosting tinyint  = NULL,   @I_bBatchValid binary(4) = NULL,  @IO_bHeaderMessages binary(4) = NULL output,  @O_bLineMessages binary(4) = NULL output,  @O_bLineMessages2 binary(4) = NULL output,   @O_mSequenceLine numeric(19,5)= NULL output,  @O_iErrorState int   = NULL output as  declare  @TRUE tinyint,  @FALSE tinyint,  @BUDGET_TRX smallint,   @iError int,  @tLoop tinyint,  @tTransaction tinyint,  @iStatus int,  @strJournalNumber varchar(30),  @cHdrAuditTrailCode char(13),  @MXNUMSEG int,  @MaintainBudgetHist int  select  @O_mSequenceLine = 0.0,  @O_iErrorState = 0,  @iStatus = 0,  @O_bLineMessages = 0x00000000,  @O_bLineMessages2 = 0x00000000  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end   while (@tLoop is NULL) begin  select @tLoop = 1   if @I_iSQLSessionID is NULL or  @I_iJournalEntry is NULL or   @I_cUserID is NULL or  @I_tPrinting is NULL or  @I_tPosting is NULL or  @I_bBatchValid is NULL or  @IO_bHeaderMessages is NULL  begin  select @O_iErrorState = 21118  break  end    select  @TRUE    = 1,  @FALSE    = 0,  @BUDGET_TRX   = 4   select   @cHdrAuditTrailCode  = TRXSource  from  #TRXHeader  where  JournalEntry = @I_iJournalEntry   if @@rowcount <> 1  begin  select @O_iErrorState = 20891  break  end   if @I_tPosting = @TRUE  begin   UPDATE GL00201   set GL00201.BUDGETAMT = GL00201.BUDGETAMT + COALESCE(GL12001.BudgerAdjustment,0)  FROM GL00201   INNER JOIN GL12001 ON  GL00201.BUDGETID = GL12001.BUDGETID   and GL00201.ACTINDX  = GL12001.ACTINDX   and GL00201.PERIODDT = GL12001.PERIODDT   and GL00201.PERIODID = GL12001.PERIODID   WHERE JRNENTRY = @I_iJournalEntry    select @iError = @@error  if @iError <> 0   begin  select @O_iErrorState = 21119  select @iStatus = @iError  break  end   select @MXNUMSEG = max(MXNUMSEG) from  DYNAMICS..SY003001  select @strJournalNumber = rtrim(ltrim(str(@I_iJournalEntry)));   if @MXNUMSEG = 1   exec ('INSERT INTO GL00201   SELECT bt.BUDGETID, a.ACTNUMBR_1,   bt.PERIODDT, bt.PERIODID, bt.BudgerAdjustment, a.ACCATNUM, a.ACTINDX, bt.YEAR1, getutcdate()   FROM GL12001 AS bt   INNER JOIN GL00100 AS a  ON bt.ACTINDX = a.ACTINDX   LEFT OUTER JOIN GL00201 AS bm ON bm.BUDGETID = bt.BUDGETID  and bm.ACTINDX = bt.ACTINDX   and bm.PERIODDT = bt.PERIODDT   and bm.PERIODID = bt.PERIODID   WHERE JRNENTRY = ' +  @strJournalNumber  + ' and bm.BUDGETID is NULL')  else if @MXNUMSEG = 2   exec ('INSERT INTO GL00201   SELECT bt.BUDGETID, a.ACTNUMBR_1, a.ACTNUMBR_2,   bt.PERIODDT, bt.PERIODID, bt.BudgerAdjustment, a.ACCATNUM, a.ACTINDX, bt.YEAR1, getutcdate()   FROM GL12001 AS bt   INNER JOIN GL00100 AS a  ON bt.ACTINDX = a.ACTINDX   LEFT OUTER JOIN GL00201 AS bm ON bm.BUDGETID = bt.BUDGETID  and bm.ACTINDX = bt.ACTINDX   and bm.PERIODDT = bt.PERIODDT   and bm.PERIODID = bt.PERIODID   WHERE JRNENTRY = ' +  @strJournalNumber  + ' and bm.BUDGETID is NULL')  else if @MXNUMSEG = 3   exec ('INSERT INTO GL00201   SELECT bt.BUDGETID, a.ACTNUMBR_1, a.ACTNUMBR_2, a.ACTNUMBR_3,   bt.PERIODDT, bt.PERIODID, bt.BudgerAdjustment, a.ACCATNUM, a.ACTINDX, bt.YEAR1, getutcdate()   FROM GL12001 AS bt   INNER JOIN GL00100 AS a  ON bt.ACTINDX = a.ACTINDX   LEFT OUTER JOIN GL00201 AS bm ON bm.BUDGETID = bt.BUDGETID  and bm.ACTINDX = bt.ACTINDX   and bm.PERIODDT = bt.PERIODDT   and bm.PERIODID = bt.PERIODID   WHERE JRNENTRY = ' +  @strJournalNumber  + ' and bm.BUDGETID is NULL')  else if @MXNUMSEG = 4   exec ('INSERT INTO GL00201   SELECT bt.BUDGETID, a.ACTNUMBR_1, a.ACTNUMBR_2, a.ACTNUMBR_3, a.ACTNUMBR_4,   bt.PERIODDT, bt.PERIODID, bt.BudgerAdjustment, a.ACCATNUM, a.ACTINDX, bt.YEAR1, getutcdate()   FROM GL12001 AS bt   INNER JOIN GL00100 AS a  ON bt.ACTINDX = a.ACTINDX   LEFT OUTER JOIN GL00201 AS bm ON bm.BUDGETID = bt.BUDGETID  and bm.ACTINDX = bt.ACTINDX   and bm.PERIODDT = bt.PERIODDT   and bm.PERIODID = bt.PERIODID   WHERE JRNENTRY = ' +  @strJournalNumber  + ' and bm.BUDGETID is NULL')  else if @MXNUMSEG = 5   exec ('INSERT INTO GL00201   SELECT bt.BUDGETID, a.ACTNUMBR_1, a.ACTNUMBR_2, a.ACTNUMBR_3, a.ACTNUMBR_4, a.ACTNUMBR_5,   bt.PERIODDT, bt.PERIODID, bt.BudgerAdjustment, a.ACCATNUM, a.ACTINDX, bt.YEAR1, getutcdate()   FROM GL12001 AS bt   INNER JOIN GL00100 AS a  ON bt.ACTINDX = a.ACTINDX   LEFT OUTER JOIN GL00201 AS bm ON bm.BUDGETID = bt.BUDGETID  and bm.ACTINDX = bt.ACTINDX   and bm.PERIODDT = bt.PERIODDT   and bm.PERIODID = bt.PERIODID   WHERE JRNENTRY = ' +  @strJournalNumber  + ' and bm.BUDGETID is NULL')  else if @MXNUMSEG = 6   exec ('INSERT INTO GL00201   SELECT bt.BUDGETID, a.ACTNUMBR_1, a.ACTNUMBR_2, a.ACTNUMBR_3, a.ACTNUMBR_4, a.ACTNUMBR_5, a.ACTNUMBR_6,   bt.PERIODDT, bt.PERIODID, bt.BudgerAdjustment, a.ACCATNUM, a.ACTINDX, bt.YEAR1, getutcdate()   FROM GL12001 AS bt   INNER JOIN GL00100 AS a  ON bt.ACTINDX = a.ACTINDX   LEFT OUTER JOIN GL00201 AS bm ON bm.BUDGETID = bt.BUDGETID  and bm.ACTINDX = bt.ACTINDX   and bm.PERIODDT = bt.PERIODDT   and bm.PERIODID = bt.PERIODID   WHERE JRNENTRY = ' +  @strJournalNumber  + ' and bm.BUDGETID is NULL')  else if @MXNUMSEG = 7   exec ('INSERT INTO GL00201   SELECT bt.BUDGETID, a.ACTNUMBR_1, a.ACTNUMBR_2, a.ACTNUMBR_3, a.ACTNUMBR_4, a.ACTNUMBR_5, a.ACTNUMBR_6, a.ACTNUMBR_7,   bt.PERIODDT, bt.PERIODID, bt.BudgerAdjustment, a.ACCATNUM, a.ACTINDX, bt.YEAR1, getutcdate()   FROM GL12001 AS bt   INNER JOIN GL00100 AS a  ON bt.ACTINDX = a.ACTINDX   LEFT OUTER JOIN GL00201 AS bm ON bm.BUDGETID = bt.BUDGETID  and bm.ACTINDX = bt.ACTINDX   and bm.PERIODDT = bt.PERIODDT   and bm.PERIODID = bt.PERIODID   WHERE JRNENTRY = ' +  @strJournalNumber  + ' and bm.BUDGETID is NULL')  else if @MXNUMSEG = 8   exec ('INSERT INTO GL00201   SELECT bt.BUDGETID, a.ACTNUMBR_1, a.ACTNUMBR_2, a.ACTNUMBR_3, a.ACTNUMBR_4, a.ACTNUMBR_5, a.ACTNUMBR_6, a.ACTNUMBR_7, a.ACTNUMBR_8,   bt.PERIODDT, bt.PERIODID, bt.BudgerAdjustment, a.ACCATNUM, a.ACTINDX, bt.YEAR1, getutcdate()   FROM GL12001 AS bt   INNER JOIN GL00100 AS a  ON bt.ACTINDX = a.ACTINDX   LEFT OUTER JOIN GL00201 AS bm ON bm.BUDGETID = bt.BUDGETID  and bm.ACTINDX = bt.ACTINDX   and bm.PERIODDT = bt.PERIODDT   and bm.PERIODID = bt.PERIODID   WHERE JRNENTRY = ' +  @strJournalNumber  + ' and bm.BUDGETID is NULL')  else if @MXNUMSEG = 9   exec ('INSERT INTO GL00201   SELECT bt.BUDGETID, a.ACTNUMBR_1, a.ACTNUMBR_2, a.ACTNUMBR_3, a.ACTNUMBR_4, a.ACTNUMBR_5, a.ACTNUMBR_6, a.ACTNUMBR_7, a.ACTNUMBR_8, a.ACTNUMBR_9,  bt.PERIODDT, bt.PERIODID, bt.BudgerAdjustment, a.ACCATNUM, a.ACTINDX, bt.YEAR1, getutcdate()   FROM GL12001 AS bt   INNER JOIN GL00100 AS a  ON bt.ACTINDX = a.ACTINDX   LEFT OUTER JOIN GL00201 AS bm ON bm.BUDGETID = bt.BUDGETID  and bm.ACTINDX = bt.ACTINDX   and bm.PERIODDT = bt.PERIODDT   and bm.PERIODID = bt.PERIODID   WHERE JRNENTRY = ' +  @strJournalNumber  + ' and bm.BUDGETID is NULL')  else if @MXNUMSEG = 10   exec ('INSERT INTO GL00201   SELECT bt.BUDGETID, a.ACTNUMBR_1, a.ACTNUMBR_2, a.ACTNUMBR_3, a.ACTNUMBR_4, a.ACTNUMBR_5, a.ACTNUMBR_6, a.ACTNUMBR_7, a.ACTNUMBR_8, a.ACTNUMBR_9, a.ACTNUMBR_10,   bt.PERIODDT, bt.PERIODID, bt.BudgerAdjustment, a.ACCATNUM, a.ACTINDX, bt.YEAR1, getutcdate()   FROM GL12001 AS bt   INNER JOIN GL00100 AS a  ON bt.ACTINDX = a.ACTINDX   LEFT OUTER JOIN GL00201 AS bm ON bm.BUDGETID = bt.BUDGETID  and bm.ACTINDX = bt.ACTINDX   and bm.PERIODDT = bt.PERIODDT   and bm.PERIODID = bt.PERIODID   WHERE JRNENTRY = ' +  @strJournalNumber  + ' and bm.BUDGETID is NULL')  else  begin  select @iStatus = 21120  select @O_iErrorState = 21120  break  end   select @iError = @@error  if @iError <> 0   begin  select @iStatus = @iError  select @O_iErrorState = 21120  break  end    insert into GL32000 (h.JRNENTRY, h.BUDGETID,YEAR1, PERIODDT, PERIODID, ACTINDX, BUDGETAMT, BudgerAdjustment, REFRENCE, TRXDATE, USWHPSTD, NOTEINDX, TRXSORCE, SOURCDOC )  select h.JRNENTRY, h.BUDGETID,YEAR1, PERIODDT, PERIODID, ACTINDX, BUDGETAMT, BudgerAdjustment, REFRENCE, TRXDATE, @I_cUserID, NOTEINDX, @cHdrAuditTrailCode, SOURCDOC   from GL12000 as h  inner join GL12001 as l  on l.JRNENTRY = h.JRNENTRY  WHERE h.JRNENTRY = @I_iJournalEntry   select @iError = @@error  if @iError <> 0   begin  select @O_iErrorState = 21121  select @iStatus = @iError  break  end   UPDATE GL12000   set TRXSORCE =  @cHdrAuditTrailCode,   USWHPSTD = @I_cUserID  WHERE GL12000.JRNENTRY = @I_iJournalEntry   end  end   if @iStatus <> 0 or @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction end else if @tTransaction = 1  commit transaction  return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[glpPostBudgetTransaction] TO [DYNGRP]
GO