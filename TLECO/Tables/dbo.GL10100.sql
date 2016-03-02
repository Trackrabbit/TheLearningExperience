CREATE TABLE [dbo].[GL10100]
(
[BSNSFMID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFINDX] [int] NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[TRXBALNC] [numeric] (19, 5) NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[LASTUSER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTDTEDT] [datetime] NOT NULL,
[USWHPSTD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTDAMNT] [numeric] (19, 5) NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLHDRMSG] [binary] (4) NOT NULL,
[GLHDRMS2] [binary] (4) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[GLHDRVAL] [binary] (4) NOT NULL,
[PERIODID] [smallint] NOT NULL,
[OPENYEAR] [smallint] NOT NULL,
[CLOSEDYR] [smallint] NOT NULL,
[ERRSTATE] [int] NOT NULL,
[HISTRX] [tinyint] NOT NULL,
[OFFACTYP] [smallint] NOT NULL,
[OFFBLCLC] [smallint] NOT NULL,
[OFFXVAR] [smallint] NOT NULL,
[OFFPSTYP] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__GL10100__DEX_ROW__251C81ED] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_GL10100U] ON [dbo].[GL10100] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.GL10100 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.GL10100, inserted WHERE GL10100.BSNSFMID = inserted.BSNSFMID AND GL10100.JRNENTRY = inserted.JRNENTRY END set nocount off    
GO
ALTER TABLE [dbo].[GL10100] ADD CONSTRAINT [CK__GL10100__DOCDATE__73501C2F] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[GL10100] ADD CONSTRAINT [CK__GL10100__LSTDTED__74444068] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[GL10100] ADD CONSTRAINT [CK__GL10100__TRXDATE__753864A1] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[GL10100] ADD CONSTRAINT [PKGL10100] PRIMARY KEY NONCLUSTERED  ([BSNSFMID], [JRNENTRY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3GL10100] ON [dbo].[GL10100] ([JRNENTRY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL10100] ON [dbo].[GL10100] ([OFFINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL10100] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10100].[BSNSFMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[OFFINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10100].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10100].[TRXBALNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10100].[LASTUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10100].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10100].[USWHPSTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10100].[PSTDAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10100].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10100].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10100].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10100].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[GLHDRMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[GLHDRMS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[GLHDRVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[OPENYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[CLOSEDYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[ERRSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[HISTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[OFFACTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[OFFBLCLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[OFFXVAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[OFFPSTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10100].[VOIDED]'
GO
GRANT SELECT ON  [dbo].[GL10100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL10100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL10100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL10100] TO [DYNGRP]
GO
