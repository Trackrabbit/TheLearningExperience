SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--exec de_CashReport 11,2015
CREATE proc [dbo].[de_CashReport] @month int,@year int
as
select 
	['GL Open Trans'].SEQNUMBR
	,['GL Open Trans'].JRNENTRY as  'Journal Entry'
	,'Series' = dbo.DYN_FUNC_Series_GL_Trx(['GL Open Trans'].[SERIES])
	,[TrxDate] as 'Transaction Date'
	,rtrim(['Accounts'].[ACTNUMST]) AS 'Account Number'
	,rtrim(['Account Master'].[ACTDESCR]) AS 'Account Description'
	,['Account Master'].[ACTNUMBR_1] as 'Company Number'
	,['Account Master'].[ACTNUMBR_2] as 'Main Account'
	,['Account Master'].USRDEFS2 as [Cash Classification From Account]
	,Case ['Account Master'].[ACTNUMBR_2]
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
		   When '10300' Then 'Payroll'
		   When '10304' Then 'Payroll - Wachovia'
		   When '10310' Then 'Payroll - Bank of America'
		   When '10320' Then 'Payroll - Chase'
		   When '10330' Then 'PNC'
		   When '10400' Then 'Petty Cash'
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
	,['GL Open Trans'].DSCRIPTN as 'Transaction Reference'
	,'Posted' as 'Transaction Posting Status'
From GL20000 as ['GL Open Trans'] INNER JOIN
		[GL00105] AS ['Accounts'] ON ['Accounts'].[ACTINDX] = ['GL Open Trans'].[ACTINDX] left outer join 
		GL00100 as ['Account Master'] on ['GL Open Trans'].Actindx = ['Account Master'].Actindx
Where dbo.DYN_FUNC_Account_Category_Number(['Account Master'].[ACCATNUM]) = 'Cash' and [Voided] = 0 AND (['GL Open Trans'].OPENYEAR) = @year AND month(['GL Open Trans'].[TrxDate]) = @month
	AND LEFT(['Accounts'].[ACTNUMST],1)<>'M' and LEFT(['Accounts'].[ACTNUMST],1)<>'N'
UNION ALL
select 
	['GL Hist Trans'].SEQNUMBR
	,['GL Hist Trans'].JRNENTRY as  'Journal Entry'
	,'Series' = dbo.DYN_FUNC_Series_GL_Trx(['GL Hist Trans'].[SERIES])
	,[TrxDate] as 'Transaction Date'
	,rtrim(['Accounts'].[ACTNUMST]) AS 'Account Number'
	,rtrim(['Account Master'].[ACTDESCR]) AS 'Account Description'
	,['Account Master'].[ACTNUMBR_1] as 'Company Number'
	,['Account Master'].[ACTNUMBR_2] as 'Main Account'
	,['Account Master'].USRDEFS2 as [Cash Classification From Account]
	,Case ['Account Master'].[ACTNUMBR_2]
		   When '10000' then 'Operating Family'
		   When '10004' then 'Wachovica'
		   When '10005' then 'Wells Fargo'
		   When '10010' then 'Bank of America'
		   When '10020' Then 'Chase'
		   When '10030' then 'PNC'
		   When '10050' Then 'Work & Fmaily'
		   When '10060' Then 'Special Purpose'
		   When '10070' Then 'Special Purpose'
		   When '10080' Then 'TLE Enrollment'
		   When '10090' Then 'Holding TLE Supply Online'
		   When '10150' Then 'Cash Money Market'
		   When '10300' Then 'Payroll'
		   When '10304' Then 'Payroll - Wachovia'
		   When '10310' Then 'Payroll - Bank of America'
		   When '10320' Then 'Payroll - Chase'
		   When '10330' Then 'PNC'
		   When '10400' Then 'Petty Cash'
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
	,['GL Hist Trans'].DSCRIPTN as 'Transaction Reference'
	,'UnPosted' as 'Transaction Posting Status'
From GL30000 as ['GL Hist Trans'] INNER JOIN
	 [GL00105] AS ['Accounts'] ON ['Accounts'].[ACTINDX] = ['GL Hist Trans'].[ACTINDX] left outer join 
	 GL00100 as ['Account Master'] on ['GL Hist Trans'].Actindx = ['Account Master'].Actindx
Where dbo.DYN_FUNC_Account_Category_Number(['Account Master'].[ACCATNUM]) = 'Cash' and ['GL Hist Trans'].[Voided] = 0 AND (['GL Hist Trans'].HSTYEAR)  = @year AND month(['GL Hist Trans'].[TrxDate]) = @month
	AND LEFT(['Accounts'].[ACTNUMST],1)<>'M' and LEFT(['Accounts'].[ACTNUMST],1)<>'N'




GO
