SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--EXEC DE_ReportCashExcel
CREATE PROCEDURE [dbo].[DE_ReportCashExcel]

AS

BEGIN

DECLARE @month as int, @year as int

SELECT TOP 1 
	  @month = [Period Id]
		,@year = [Year]
FROM DE_CashReportTbl

truncate table DE_CashReportTbl_Temp

INSERT INTO DE_CashReportTbl_Temp EXECUTE de_CashReport @month ,@year 

CREATE TABLE #CashReport(
AccountNumber  char(129)
,AccountDescription char(51)
,CompanyNumber  char(5)
,CompanyName  char(150)
,CashClassification  char(25)
,BegBalance  numeric(19,5)
,CashNew  char(25)
,Balance  numeric (19,5)
)

INSERT INTO #CashReport
SELECT 
	a.ACTNUMST as [Account Number]
	,am.ACTDESCR as [Account Description]
	,RTRIM(a.ACTNUMBR_1) AS [Company Number]
	,RTRIM(s.DSCRIPTN) as CompanyName
	,Case a.ACTNUMBR_2
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
	,ISNULL( (SELECT SUM(DEBITAMT) - SUM(CRDTAMNT)   FROM dbo.GL10110 WHERE PERIODID <@month AND ACTINDX = a.ACTINDX AND  YEAR1 = @year) ,0) AS BegBalance 
	,'' as CashNew
	,0 AS Balance
FROM GL00105 a INNER JOIN
	GL00100 am ON a.ACTINDX = am.ACTINDX INNER JOIN
	GL40200	s ON s.SGMNTID = a.ACTNUMBR_1 AND SGMTNUMB = 1
WHERE dbo.DYN_FUNC_Account_Category_Number(am.ACCATNUM) = 'Cash' AND LEFT(a.ACTNUMST,1)<>'M' and LEFT(a.ACTNUMST,1)<>'N'
UNION
SELECT 
	gp.[Account Number]
	,gp.[Account Description]
	,gp.[Company Number]
	,RTRIM(s.DSCRIPTN) as CompanyName
	,gp.[Cash Classification]
	,0 AS BegBalance
	,ex.[Cash Classification] as CashNew
	,SUM(ex.[Debit Amount]) - SUM( ex.[Credit Amount]) as Balance
FROM 
	DE_CashReportTbl_Temp gp INNER JOIN
	DE_CashReportTbl ex ON ex.[Journal Entry] = gp.[Journal Entry] AND ex.SEQNUMBR = gp.SEQNUMBR INNER JOIN
	GL00105 a ON a.ACTNUMST = gp.[Account Number] INNER JOIN 
	GL40200	s ON s.SGMNTID = gp.[Company Number] AND SGMTNUMB = 1
GROUP BY a.ACTINDX ,gp.[Account Number], gp.[Company Number], s.DSCRIPTN, gp.[Account Description], gp.[Company Number], gp.[Cash Classification], ex.[Cash Classification]

CREATE INDEX INDX_#CashReport ON #CashReport (CompanyNumber, CompanyName,CashClassification,CashNew)


SELECT
	RTRIM(CompanyNumber) AS CompanyNumber
	,RTRIM(CompanyName) AS CompanyName
	,RTRIM(CashClassification) AS CashClassification
	,SUM(BegBalance) AS BegBalance
	,SUM([transfer]) AS [transfer],SUM([OTHER transfer]) AS [OTHER transfer],SUM([Interco rent]) AS [Interco rent],SUM([center payments interco]) AS [center payments interco]
	,SUM([cash collections]) AS [cash collections],SUM([other]) AS [other], SUM([royalty]) AS [royalty], SUM([mgmt fees intern]) AS [mgmt fees intern], SUM([limited]) AS [limited] ,SUM([mwrh]) AS [mwrh],
	SUM([return fee]) AS [return fee], SUM([income]) AS [income], SUM([Adds]) AS [Adds], SUM([tuition]) AS [tuition],SUM([k28payroll]) AS [k28payroll], SUM([expenses]) AS [expenses]
FROM 
	(SELECT
		CompanyNumber
		,CompanyName
		,CashClassification
		,SUM(BegBalance) as BegBalance
		,CashNew
		,SUM(Balance) as Balance
	FROM
		#CashReport
	GROUP BY 
		CompanyNumber, CompanyName, CashClassification, CashNew) PVT
	PIVOT	(SUM(Balance) FOR CashNew  IN ([transfer],[OTHER transfer],[Interco rent],[center payments interco],[cash collections],[other],[royalty],[mgmt fees intern],[limited],[mwrh],
	[return fee],[income],[Adds], [tuition],[k28payroll], [expenses])
			) AS PivoteTable
WHERE BegBalance<>0 OR [transfer]<>0 OR [OTHER transfer]<>0 OR [Interco rent]<>0 OR [center payments interco]<>0 OR [cash collections]<>0 OR [other]<>0 OR [royalty]<>0 OR [mgmt fees intern]<>0 OR
	[limited]<>0 OR [mwrh]<>0 OR [return fee]<>0 OR [income]<>0 OR [Adds]<>0 OR [tuition]<>0 OR [k28payroll]<>0 OR [expenses]<>0  	
GROUP BY CompanyNumber, CompanyName, CashClassification



DROP TABLE #CashReport
END
GO
