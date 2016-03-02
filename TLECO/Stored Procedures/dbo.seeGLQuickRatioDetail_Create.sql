SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeGLQuickRatioDetail_Create] @iLanguageID int   as   set nocount on   declare @sqldropstring varchar(400),   @sqlstring1 varchar(8000),   @sqlstring2 varchar(8000),   @sqlstring3 varchar(8000),   @sqlstring4 varchar(8000),   @sqlstring5 varchar(8000),   @sqlstring6 varchar(8000),   @sqlstring7 varchar(8000),   @sqlstring8 varchar(8000),   @sqlstring9 varchar(8000),   @sqlstring10 varchar(8000),   @sqljoinstring varchar(8000),   @sqlaccessstring varchar(2000),   @tNumberSegments int,   @tSegment int,   @I_iDictID int,   @I_iLangID int,   @I_iMessageNumber int,   @I_iAliasMessageNumber int,   @I_iIntegerValue int,  @Journal_Entry varchar(255), @Account_Index varchar(255), @Account_Index_For_DrillBack varchar(255), @Journal_Entry_For_DrillBack varchar(255) select @I_iDictID = 1493 select @I_iMessageNumber = 24400 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Journal_Entry output   select @I_iDictID = 1493 select @I_iMessageNumber = 24415 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Account_Index output   select @I_iDictID = 1493 select @I_iMessageNumber = 24415 select @I_iAliasMessageNumber = 22214 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Account_Index_For_DrillBack output   select @I_iDictID = 1493 select @I_iMessageNumber = 24400 select @I_iAliasMessageNumber = 22214 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Journal_Entry_For_DrillBack output    select @sqldropstring =   'IF EXISTS (SELECT * FROM   sys.objects WHERE  object_id = OBJECT_ID(N''[dbo].[seeGLQuickRatioDetail]'') AND type in ( N''P'', N''PC'' ))  ' +   '  DROP PROCEDURE [dbo].[seeGLQuickRatioDetail]  '   select @sqlstring1 =   'create procedure dbo.seeGLQuickRatioDetail '+   '  @UserDate datetime = '''', '+   '  @Label varchar(30) = '''', '+   '  @CurrPrevType smallint, '+   '  @Date datetime = '''' '+   'as '+   'IF (@Label IS NULL OR @Label = '''') '+   'BEGIN '+   '      SET @Label = (SELECT rtrim(PERNAME) AS PERNAME  '+   '                          FROM (SELECT DISTINCT(PERNAME), PERIODID  '+   '                                    FROM SY40100  '+   '                                    WHERE PERNAME <> ''Beginning Balance''  '+   '                                          and @Date between PERIODDT and PERDENDT) SY40100)  '+   'END '+   'IF (@UserDate IS NULL or @UserDate = '''') '+   'BEGIN '+   '      SET @UserDate = @Date '+   'END '+   'DECLARE @IsHist int   '+   'DECLARE @CurrentYear int '+   'DECLARE @DATEMAX datetime '+   'DECLARE @StartDate datetime '+   'DECLARE @EndDate datetime  '+   'DECLARE @PERIODOD smallint '+   'DECLARE @BeginingBalance numeric '+    'DECLARE @DetailDates TABLE '+   '(StartDate datetime, '+   ' EndDate datetime, '+   ' DateLabel varchar(30), '+   ' CurrPrevType int) '+   'INSERT INTO @DetailDates '+   ' SELECT  '+   ' StartDate, EndDate, DateLabel, CurrPrevType '+   ' FROM  '+   ' GetKPIDetailDates(@UserDate, ''Fiscal'') '+   'SET @StartDate = (select StartDate from @DetailDates where DateLabel = @Label and CurrPrevType = @CurrPrevType) '+   'SET @EndDate = (select EndDate from @DetailDates where DateLabel = @Label and CurrPrevType = @CurrPrevType) '+   'SELECT @CurrentYear = YEAR1,  '+   ' @IsHist = HISTORYR  '+   'FROM SY40101  '+   'WHERE @StartDate between FSTFSCDY and LSTFSCDY  '+   'SELECT @PERIODOD = PERIODID   '+   'FROM SY40100  '+   'WHERE @StartDate between PERIODDT and PERDENDT  '+   ' AND PERIODID <> 0  '+   ' AND  FORIGIN = 1  '+   ' AND YEAR1 = @CurrentYear '+   'create table #Assets_Detail '+   '(ATYPE smallint, '+   ' ACTNUMST char (129), '+   ' ACTDESCR char (51), '+   ' JRNENTRY int, '+   ' TRXDATE datetime, '+   ' ACCATDSC char (51), '+   ' DEBITAMT numeric(19,5), '+   ' CRDTAMNT numeric(19,5), '+   ' ['+@Journal_Entry_For_DrillBack+'] varchar(500), '+   ' ['+@Account_Index_For_DrillBack+'] varchar(500)) '+    'create table #Liabilities_Detail '+   '(ATYPE smallint, '+   ' ACTNUMST char (129), '+   ' ACTDESCR char (51), '+   ' JRNENTRY int, '+   ' TRXDATE datetime, '+   ' ACCATDSC char (51), '+   ' DEBITAMT numeric(19,5), '+   ' CRDTAMNT numeric(19,5), '+   ' ['+@Journal_Entry_For_DrillBack+'] varchar(500), '+   ' ['+@Account_Index_For_DrillBack+'] varchar(500)) '+   'IF @IsHist = 1  '+   'BEGIN '+   ' INSERT INTO #Assets_Detail (ATYPE, ACTNUMST, ACTDESCR, JRNENTRY, TRXDATE, ACCATDSC, DEBITAMT, CRDTAMNT, ['+@Journal_Entry_For_DrillBack+'], ['+@Account_Index_For_DrillBack+'])   '+   ' SELECT 0, ACTNUMST, GL00100.ACTDESCR, JRNENTRY, TRXDATE, GL00102.ACCATDSC, ISNULL(DEBITAMT,0.00) as DEBITAMT, ISNULL(CRDTAMNT,0.00) as CRDTAMNT, ['+@Journal_Entry_For_DrillBack+'], ['+@Account_Index_For_DrillBack+'] '+   ' FROM GL30000  '+   ' join GL00100 on  '+   '  GL30000.ACTINDX = GL00100.ACTINDX '+   ' join GL00105 on '+   '  GL30000.ACTINDX = GL00105.ACTINDX '+   ' join GL00102 on '+   '  GL00100.ACCATNUM = GL00102.ACCATNUM  '+   ' join (SELECT DISTINCT ['+@Journal_Entry+'],  ['+@Journal_Entry_For_DrillBack+'] '+   '   FROM [AccountTransactions]) AccountTransactions on '+   '  GL30000.JRNENTRY = AccountTransactions.['+@Journal_Entry+'] '+   ' join (SELECT DISTINCT ['+@Account_Index+'], ['+@Account_Index_For_DrillBack+'] '+   '   FROM [AccountTransactions]) AccountDrillback on '+   '  GL30000.ACTINDX = AccountDrillback.['+@Account_Index+'] '+   ' WHERE   GL00100.ACCATNUM in (1,2,3,4) '+   '  AND   TRXDATE >= @StartDate  '+   '  AND   TRXDATE <= @EndDate '+   ' INSERT INTO #Liabilities_Detail (ATYPE, ACTNUMST, ACTDESCR, JRNENTRY, TRXDATE, ACCATDSC, DEBITAMT, CRDTAMNT, ['+@Journal_Entry_For_DrillBack+'], ['+@Account_Index_For_DrillBack+'])   '+   ' SELECT 1, ACTNUMST, GL00100.ACTDESCR, JRNENTRY, TRXDATE, GL00102.ACCATDSC, ISNULL(DEBITAMT,0.00) as DEBITAMT, ISNULL(CRDTAMNT,0.00) as CRDTAMNT, ['+@Journal_Entry_For_DrillBack+'], ['+@Account_Index_For_DrillBack+'] '+   ' FROM GL30000  '+   ' join GL00100 on  '+   '  GL30000.ACTINDX = GL00100.ACTINDX '+   ' join GL00105 on '+   '  GL30000.ACTINDX = GL00105.ACTINDX '+   ' join GL00102 on '+   '  GL00100.ACCATNUM = GL00102.ACCATNUM  '+   ' join (SELECT DISTINCT ['+@Journal_Entry+'],  ['+@Journal_Entry_For_DrillBack+'] '+   '   FROM [AccountTransactions]) AccountTransactions on '+   '  GL30000.JRNENTRY = AccountTransactions.['+@Journal_Entry+'] '+   ' join (SELECT DISTINCT ['+@Account_Index+'], ['+@Account_Index_For_DrillBack+'] '+   '   FROM [AccountTransactions]) AccountDrillback on '+   '  GL30000.ACTINDX = AccountDrillback.['+@Account_Index+'] '+   ' WHERE   GL00100.ACCATNUM in (13,14,15,16,17,18,19,20,21) '+   '  AND   TRXDATE >= @StartDate  '+   '  AND   TRXDATE <= @EndDate '+   'END  '+   'ELSE  '+   'BEGIN    '+   ' INSERT INTO #Assets_Detail (ATYPE, ACTNUMST, ACTDESCR, JRNENTRY, TRXDATE, ACCATDSC, DEBITAMT, CRDTAMNT, ['+@Journal_Entry_For_DrillBack+'], ['+@Account_Index_For_DrillBack+'])    '+   ' SELECT 0, ACTNUMST, GL00100.ACTDESCR, JRNENTRY, TRXDATE, GL00102.ACCATDSC, ISNULL(DEBITAMT,0.00) as DEBITAMT, ISNULL(CRDTAMNT,0.00) as CRDTAMNT, ['+@Journal_Entry_For_DrillBack+'], ['+@Account_Index_For_DrillBack+'] '+   ' FROM GL20000  '+   ' join GL00100 on  '+   '  GL20000.ACTINDX = GL00100.ACTINDX  '+   ' join GL00105 on '+   '  GL20000.ACTINDX = GL00105.ACTINDX '+   ' join GL00102 on '+   '  GL00100.ACCATNUM = GL00102.ACCATNUM '+   ' join (SELECT DISTINCT ['+@Journal_Entry+'],  ['+@Journal_Entry_For_DrillBack+'] '+   '   FROM [AccountTransactions]) AccountTransactions on '+   '  GL20000.JRNENTRY = AccountTransactions.['+@Journal_Entry+'] '+   ' join (SELECT DISTINCT ['+@Account_Index+'], ['+@Account_Index_For_DrillBack+'] '+   '   FROM [AccountTransactions]) AccountDrillback on '+   '  GL20000.ACTINDX = AccountDrillback.['+@Account_Index+']   '+   ' WHERE   GL00100.ACCATNUM  in (1,2,3,4) '+   '  AND   TRXDATE >= @StartDate  '+   '  AND   TRXDATE <= @EndDate '+   ' INSERT INTO #Liabilities_Detail (ATYPE, ACTNUMST, ACTDESCR, JRNENTRY, TRXDATE, ACCATDSC, DEBITAMT, CRDTAMNT, ['+@Journal_Entry_For_DrillBack+'], ['+@Account_Index_For_DrillBack+'])    '+   ' SELECT 1, ACTNUMST, GL00100.ACTDESCR, JRNENTRY, TRXDATE, GL00102.ACCATDSC, ISNULL(DEBITAMT,0.00) as DEBITAMT, ISNULL(CRDTAMNT,0.00) as CRDTAMNT, ['+@Journal_Entry_For_DrillBack+'], ['+@Account_Index_For_DrillBack+'] '+   ' FROM GL20000  '+   ' join GL00100 on  '+   '  GL20000.ACTINDX = GL00100.ACTINDX  '+   ' join GL00105 on '+   '  GL20000.ACTINDX = GL00105.ACTINDX '+   ' join GL00102 on '+   '  GL00100.ACCATNUM = GL00102.ACCATNUM '+   ' join (SELECT DISTINCT ['+@Journal_Entry+'],  ['+@Journal_Entry_For_DrillBack+'] '+   '   FROM [AccountTransactions]) AccountTransactions on '+   '  GL20000.JRNENTRY = AccountTransactions.['+@Journal_Entry+'] '+   ' join (SELECT DISTINCT ['+@Account_Index+'], ['+@Account_Index_For_DrillBack+'] '+   '   FROM [AccountTransactions]) AccountDrillback on '+   '  GL20000.ACTINDX = AccountDrillback.['+@Account_Index+']   '+   ' WHERE   GL00100.ACCATNUM  in (13,14,15,16,17,18,19,20,21) '+   '  AND   TRXDATE >= @StartDate  '+   '  AND   TRXDATE <= @EndDate '+   'END '+   'SELECT ATYPE, ACTNUMST, ACTDESCR, JRNENTRY, TRXDATE, ACCATDSC, DEBITAMT, CRDTAMNT, ['+@Journal_Entry_For_DrillBack+'], ['+@Account_Index_For_DrillBack+'] from #Assets_Detail '+   'UNION ALL '+   'SELECT ATYPE, ACTNUMST, ACTDESCR, JRNENTRY, TRXDATE, ACCATDSC, DEBITAMT, CRDTAMNT, ['+@Journal_Entry_For_DrillBack+'], ['+@Account_Index_For_DrillBack+'] from #Liabilities_Detail '+   'ORDER BY ATYPE, ACTNUMST, TRXDATE  '   select @sqlaccessstring =   'GRANT execute ON [dbo].[seeGLQuickRatioDetail] TO [rpt_executive], [rpt_bookkeeper], [rpt_accounting manager], [rpt_certified accountant]'   exec (@sqldropstring)   exec (@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10)   exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[seeGLQuickRatioDetail_Create] TO [DYNGRP]
GO