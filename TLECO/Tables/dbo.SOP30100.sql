CREATE TABLE [dbo].[SOP30100]
(
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[APPROVL] [tinyint] NOT NULL,
[APPRVLDT] [datetime] NOT NULL,
[APRVLUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHTOTAL] [numeric] (19, 5) NOT NULL,
[CNTRLTOT] [numeric] (19, 5) NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[CNTRLTRX] [int] NOT NULL,
[REPRNTNT] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[TRXMISNG] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP30100] ADD CONSTRAINT [CK__SOP30100__APPRVL__1E105D02] CHECK ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[SOP30100] ADD CONSTRAINT [CK__SOP30100__GLPOST__1F04813B] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[SOP30100] ADD CONSTRAINT [PKSOP30100] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SOP30100] ON [dbo].[SOP30100] ([BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1SOP30100] ON [dbo].[SOP30100] ([BCHSOURC], [BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SOP30100] ON [dbo].[SOP30100] ([GLPOSTDT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP30100] ON [dbo].[SOP30100] ([TRXSORCE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30100].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30100].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30100].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30100].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30100].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30100].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30100].[APPROVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30100].[APPRVLDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30100].[APRVLUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30100].[BCHTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30100].[CNTRLTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30100].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30100].[CNTRLTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30100].[REPRNTNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30100].[TRXMISNG]'
GO
GRANT SELECT ON  [dbo].[SOP30100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP30100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP30100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP30100] TO [DYNGRP]
GO
