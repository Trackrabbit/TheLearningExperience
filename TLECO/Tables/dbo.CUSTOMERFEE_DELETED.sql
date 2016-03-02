CREATE TABLE [dbo].[CUSTOMERFEE_DELETED]
(
[Customer Number] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CustomerKey] [numeric] (19, 5) NULL,
[School Type] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeaseAdminFee] [numeric] (19, 5) NULL,
[Software Fee] [numeric] (19, 5) NULL,
[JBJFee] [numeric] (19, 5) NULL,
[CenterCapacity] [numeric] (19, 5) NULL,
[IsAdvFee] [numeric] (19, 5) NULL,
[AdvFeePct] [numeric] (19, 5) NULL,
[Pctg] [numeric] (19, 5) NULL,
[OpenDate] [datetime] NULL,
[AddAdvFeeAmt] [numeric] (19, 5) NULL,
[AdvFeeCap] [numeric] (19, 5) NULL,
[ArchitectCapacity] [numeric] (19, 5) NULL,
[RecogDate] [datetime] NULL
) ON [PRIMARY]
GO
