SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE proc [dbo].[de_insertCashRecords] @SEQNUMBR int, @je int,@series varchar(100),@transadate datetime,@acnumber varchar(51),@actdesc
varchar(200),@companynumber char(5),@mainaccount char(5),@cashClass char(25),@year1 int,@periodid int,
@debit numeric(19,5),@credit numeric(19,5),
@trnRef char(250),@pstng char(6)
as

--if select count(*) from DE_CashReportTbl>
--delete DE_CashReportTbl
--SELECT * FROM DE_CashReportTbl

INSERT INTO [dbo].[DE_CashReportTbl]
           (SEQNUMBR 
		   ,[Journal Entry]
           ,[Series]
           ,[Transaction Date]
           ,[Account Number]
           ,[Account Description]
           ,[Company Number]
           ,[Main Account]
           ,[Cash Classification]
           ,[Year]
           ,[Period Id]
           ,[Debit Amount]
           ,[Credit Amount]
           ,[Transaction Reference]
           ,[Transaction Posting Status])
     VALUES
           (@SEQNUMBR
		   ,@je
           ,@series
           ,@transadate
           ,@acnumber
           ,@actdesc
           ,@companynumber
           ,@mainaccount
           ,@cashClass
           ,@year1
           ,@periodid
           ,@debit
           ,@credit
           ,@trnRef
           ,@pstng)

		   UPDATE DE_CashReportTbl SET [Cash Classification]=REPLACE([Cash Classification],'&&','&'),[Account Description]=REPLACE([Account Description],'&&','&'),[Transaction Reference]=REPLACE([Transaction Reference],'&&','&')
		     

GO
