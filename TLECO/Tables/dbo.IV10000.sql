CREATE TABLE [dbo].[IV10000]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVDOCNBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVDOCTYP] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[TRXQTYTL] [numeric] (19, 5) NOT NULL,
[IVWHRMSG] [binary] (4) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[SRCRFRNCNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOURCEINDICATOR] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__IV10000__DEX_ROW__1DBCEDF5] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_IV10000U] ON [dbo].[IV10000] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.IV10000 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.IV10000, inserted WHERE IV10000.BACHNUMB = inserted.BACHNUMB AND IV10000.BCHSOURC = inserted.BCHSOURC AND IV10000.IVDOCNBR = inserted.IVDOCNBR AND IV10000.IVDOCTYP = inserted.IVDOCTYP END set nocount off    
GO
ALTER TABLE [dbo].[IV10000] ADD CONSTRAINT [CK__IV10000__DOCDATE__23BE4960] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[IV10000] ADD CONSTRAINT [CK__IV10000__GLPOSTD__24B26D99] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[IV10000] ADD CONSTRAINT [CK__IV10000__MODIFDT__25A691D2] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[IV10000] ADD CONSTRAINT [CK__IV10000__POSTEDD__269AB60B] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[IV10000] ADD CONSTRAINT [PKIV10000] PRIMARY KEY NONCLUSTERED  ([BACHNUMB], [BCHSOURC], [IVDOCTYP], [IVDOCNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV10000] ON [dbo].[IV10000] ([IVDOCTYP], [IVDOCNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10000].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10000].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10000].[IVDOCNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10000].[RCDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10000].[IVDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10000].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10000].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10000].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10000].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10000].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10000].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10000].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10000].[TRXQTYTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10000].[IVWHRMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10000].[SRCRFRNCNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10000].[SOURCEINDICATOR]'
GO
GRANT SELECT ON  [dbo].[IV10000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV10000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV10000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV10000] TO [DYNGRP]
GO
