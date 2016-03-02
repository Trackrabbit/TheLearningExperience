SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Dynamcis Expert - SGrant
-- Create date: 10/13/2015
-- Description:	CashConsolidatedReport
-- =============================================
CREATE PROCEDURE [dbo].[uprCashConsolidatedReport] 
	-- Add the parameters for the stored procedure here
	@Year int = 2015, 
	@Period int = 1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select 
['GL Open Trans'].JRNENTRY as  'Journal Entry'
,'Series' = dbo.DYN_FUNC_Series_GL_Trx(['GL Open Trans'].[SERIES])
,[TrxDate] as 'Transaction Date'
,(SELECT rtrim([ACTNUMST])
                 FROM    [GL00105] AS ['Account Master']
                 WHERE ['Account Master'].[ACTINDX] = ['GL Open Trans'].[ACTINDX]) AS 'Account Number'
,rtrim(['Account Master'].[ACTDESCR]) AS 'Account Description'
,['Account Master'].[ACTNUMBR_1] as 'Company Number'
,['Account Master'].[ACTNUMBR_2] as 'Main Account'
,Case [ACTNUMBR_2]
	When '10000' then 'Operating Family'
	When '10004' then 'Wachovica'
	When '10005' then 'Wells Fargo'
	When '10010' then 'Bank of America'
	When '10020' Then 'Chase'
	When '10030' then 'PNC'
	When '10050' Then 'Work & Family'
	When '10060' Then 'Special Purpose'
	When '10070' Then 'Special Purpose'
	When '10080' Then 'TLE Enrollment'
	When '10090' Then 'Holding TLE Supply Online'
	When '10150' Then 'Cash Money Market'
	When '10300' THen 'Payroll'
	When '10304' Then 'Payroll - Wachovia'
	When '10310' Then 'Payroll - Bank of America'
	When '10320' Then 'Payroll - Chase'
	WHen '10330' THen 'PNC'
	When '10400' THen 'Petty Cash'
	When '10413' Then 'Commerce Hills'
	When '10450' Then 'Merchant'
	When '10455' Then 'Commerce Online'
	When '10460' Then 'Merchant 111'

	Else 'Unclassified'
End as 'Cash Classification'	
,['GL Open Trans'].OPENYEAR as 'Year'
,['GL Open Trans'].PERIODID as 'Period Id'
,['GL Open Trans'].DEBITAMT as 'Debit Amount'
,['GL Open Trans'].[CRDTAMNT] as 'Credit Amount'
,['GL Open Trans'].DEBITAMT - ['GL Open Trans'].[CRDTAMNT] as 'Net Amount'
,['GL Open Trans'].REFRENCE as 'Transaction Reference'
,'Posted' as 'Transaction Posting Status'
From GL20000 as ['GL Open Trans']
left outer join GL00100 as ['Account Master'] on ['GL Open Trans'].Actindx = ['Account Master'].Actindx
Where dbo.DYN_FUNC_Account_Category_Number(['Account Master'].[ACCATNUM]) = 'Cash' and [Voided] = 0 
AND ['GL Open Trans'].OPENYEAR= @year
AND ['GL Open Trans'].PERIODID = @period

UNION ALL
select 
['GL Hist Trans'].JRNENTRY as  'Journal Entry'
,'Series' = dbo.DYN_FUNC_Series_GL_Trx(['GL Hist Trans'].[SERIES])
,[TrxDate] as 'Transaction Date'
 ,(SELECT rtrim([ACTNUMST])
                 FROM    [GL00105] AS ['Account Master']
                 WHERE ['Account Master'].[ACTINDX] = ['GL Hist Trans'].[ACTINDX]) AS 'Account Number'
,rtrim(['Account Master'].[ACTDESCR]) AS 'Account Description'
,['Account Master'].[ACTNUMBR_1] as 'Company Number'
,['Account Master'].[ACTNUMBR_2] as 'Main Account'
,Case [ACTNUMBR_2]
	When '10000' then 'Operating Family'
	When '10004' then 'Wachovica'
	When '10005' then 'Wells Fargo'
	When '10010' then 'Bank of America'
	When '10020' Then 'Chase'
	When '10030' then 'PNC'
	When '10050' Then 'Work & Family'
	When '10060' Then 'Special Purpose'
	When '10070' Then 'Special Purpose'
	When '10080' Then 'TLE Enrollment'
	When '10090' Then 'Holding TLE Supply Online'
	When '10150' Then 'Cash Money Market'
	When '10300' THen 'Payroll'
	When '10304' Then 'Payroll - Wachovia'
	When '10310' Then 'Payroll - Bank of America'
	When '10320' Then 'Payroll - Chase'
	WHen '10330' THen 'PNC'
	When '10400' THen 'Petty Cash'
	When '10413' Then 'Commerce Hills'
	When '10450' Then 'Merchant'
	When '10455' Then 'Commerce Online'
	When '10460' Then 'Merchant 111'

	Else 'Unclassified'
End as 'Cash Classification'	
,['GL Hist Trans'].HSTYEAR as 'Year'
,['GL Hist Trans'].PERIODID as 'Period Id'
,['GL Hist Trans'].DEBITAMT as 'Debit Amount'
,['GL Hist Trans'].[CRDTAMNT] as 'Credit Amount'
,['GL Hist Trans'].DEBITAMT - ['GL Hist Trans'].[CRDTAMNT] as 'Net Amount'
,['GL Hist Trans'].REFRENCE as 'Transaction Reference'
,'UnPosted' as 'Transaction Posting Status'
From GL30000 as ['GL Hist Trans']
left outer join GL00100 as ['Account Master'] on ['GL Hist Trans'].Actindx = ['Account Master'].Actindx
Where dbo.DYN_FUNC_Account_Category_Number(['Account Master'].[ACCATNUM]) = 'Cash' and ['GL Hist Trans'].[Voided] = 0
AND ['GL Hist Trans'].HSTYEAR  = @year
AND ['GL Hist Trans'].PERIODID = @period
END

GO
GRANT EXECUTE ON  [dbo].[uprCashConsolidatedReport] TO [DYNGRP]
GO
