CREATE TABLE [dbo].[GL40000]
(
[UNIQKEY] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NJRNLENT] [int] NOT NULL,
[RERINDX] [int] NOT NULL,
[LSTCLSDT] [datetime] NOT NULL,
[TRERCLSG] [tinyint] NOT NULL,
[DIVACTSG] [smallint] NOT NULL,
[BLNCDSPL] [smallint] NOT NULL,
[KPGACHST] [tinyint] NOT NULL,
[KPGTRXHS] [tinyint] NOT NULL,
[AHSTPSTG] [tinyint] NOT NULL,
[USRDFPR1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPDTACCEL] [tinyint] NOT NULL,
[Posting_Number_Type] [smallint] NOT NULL,
[Delete_Saved_Trx] [tinyint] NOT NULL,
[Void_Sub_Trx] [tinyint] NOT NULL,
[Correct_IC_Trx] [tinyint] NOT NULL,
[Allow_Reporting_Ledgers] [tinyint] NOT NULL,
[UseLedgersForAcctBalance] [binary] (4) NOT NULL,
[NXTBUDJRLENT] [int] NOT NULL,
[KPBUDTRXHIST] [tinyint] NOT NULL,
[NextReconciliationNumber] [int] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__GL40000__DEX_ROW__1C5231C2] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_GL40000U] ON [dbo].[GL40000] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.GL40000 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.GL40000, inserted WHERE GL40000.UNIQKEY = inserted.UNIQKEY END set nocount off    
GO
ALTER TABLE [dbo].[GL40000] ADD CONSTRAINT [CK__GL40000__LSTCLSD__25DB9BFC] CHECK ((datepart(hour,[LSTCLSDT])=(0) AND datepart(minute,[LSTCLSDT])=(0) AND datepart(second,[LSTCLSDT])=(0) AND datepart(millisecond,[LSTCLSDT])=(0)))
GO
ALTER TABLE [dbo].[GL40000] ADD CONSTRAINT [PKGL40000] PRIMARY KEY NONCLUSTERED  ([UNIQKEY]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL40000] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL40000].[UNIQKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[NJRNLENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[RERINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL40000].[LSTCLSDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[TRERCLSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[DIVACTSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[BLNCDSPL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[KPGACHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[KPGTRXHS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[AHSTPSTG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL40000].[USRDFPR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL40000].[USRDRPR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL40000].[USRDRPR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL40000].[USRDRPR4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[UPDTACCEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[Posting_Number_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[Delete_Saved_Trx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[Void_Sub_Trx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[Correct_IC_Trx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[Allow_Reporting_Ledgers]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[UseLedgersForAcctBalance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[NXTBUDJRLENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[KPBUDTRXHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40000].[NextReconciliationNumber]'
GO
GRANT SELECT ON  [dbo].[GL40000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL40000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL40000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL40000] TO [DYNGRP]
GO
