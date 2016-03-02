CREATE TABLE [dbo].[DE_CashReportTbl_Temp]
(
[SEQNUMBR] [int] NOT NULL,
[Journal Entry] [int] NOT NULL,
[Series] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Transaction Date] [datetime] NOT NULL,
[Account Number] [varchar] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account Description] [varchar] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Company Number] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Main Account] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cash Classification] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Year] [smallint] NOT NULL,
[Period Id] [smallint] NOT NULL,
[Debit Amount] [numeric] (19, 5) NOT NULL,
[Credit Amount] [numeric] (19, 5) NOT NULL,
[Transaction Reference] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Transaction Posting Status] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
