CREATE TABLE [dbo].[IV30100]
(
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHFREQ] [smallint] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[HISTRMVD] [tinyint] NOT NULL,
[BCHTOTAL] [numeric] (19, 5) NOT NULL,
[CNTRLTOT] [numeric] (19, 5) NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[CNTRLTRX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV30100] ADD CONSTRAINT [CK__IV30100__POSTEDD__5CF6C6BC] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[IV30100] ADD CONSTRAINT [PKIV30100] PRIMARY KEY NONCLUSTERED  ([TRXSORCE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV30100] ON [dbo].[IV30100] ([BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1IV30100] ON [dbo].[IV30100] ([BCHSOURC], [BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4IV30100] ON [dbo].[IV30100] ([POSTEDDT], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30100].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30100].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30100].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30100].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30100].[BACHFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV30100].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30100].[HISTRMVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30100].[BCHTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30100].[CNTRLTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30100].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30100].[CNTRLTRX]'
GO
GRANT SELECT ON  [dbo].[IV30100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV30100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV30100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV30100] TO [DYNGRP]
GO
