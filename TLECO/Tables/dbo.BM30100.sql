CREATE TABLE [dbo].[BM30100]
(
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHFREQ] [smallint] NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[BCHTOTAL] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[ORIGIN] [smallint] NOT NULL,
[APPROVL] [tinyint] NOT NULL,
[APRVLUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPRVLDT] [datetime] NOT NULL,
[CNTRLTRX] [int] NOT NULL,
[CNTRLTOT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BM30100] ADD CONSTRAINT [CK__BM30100__APPRVLD__693CA210] CHECK ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[BM30100] ADD CONSTRAINT [CK__BM30100__PSTGDAT__6A30C649] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[BM30100] ADD CONSTRAINT [PKBM30100] PRIMARY KEY NONCLUSTERED  ([TRXSORCE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BM30100] ON [dbo].[BM30100] ([BCHSOURC], [BACHNUMB], [TRXSORCE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BM30100] ON [dbo].[BM30100] ([PSTGDATE], [TRXSORCE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30100].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30100].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30100].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30100].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30100].[BACHFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30100].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30100].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30100].[BCHTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30100].[ORIGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30100].[APPROVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30100].[APRVLUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30100].[APPRVLDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30100].[CNTRLTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30100].[CNTRLTOT]'
GO
GRANT SELECT ON  [dbo].[BM30100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BM30100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BM30100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BM30100] TO [DYNGRP]
GO
