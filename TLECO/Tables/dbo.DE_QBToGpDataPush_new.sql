CREATE TABLE [dbo].[DE_QBToGpDataPush_new]
(
[TrxGroup] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AccountNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Debit] [numeric] (19, 5) NULL,
[Credit] [numeric] (19, 5) NULL,
[Amount] [numeric] (19, 5) NULL,
[NewMain] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class Lookup] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewAccount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Date] [datetime] NULL,
[In Gp] [datetime] NULL,
[BatchID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[QB-Hist] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
