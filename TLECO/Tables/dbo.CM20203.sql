CREATE TABLE [dbo].[CM20203]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[BCHTOTAL] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTGenerationTimestamp] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFT_Status] [smallint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM20203] ADD CONSTRAINT [CK__CM20203__POSTEDD__3B40CD36] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[CM20203] ADD CONSTRAINT [PKCM20203] PRIMARY KEY NONCLUSTERED  ([CHEKBKID], [SERIES], [EFT_Status], [BCHSOURC], [BACHNUMB]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1CM20203] ON [dbo].[CM20203] ([CHEKBKID], [BCHSOURC], [BACHNUMB]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1CM20203] ON [dbo].[CM20203] ([CHEKBKID], [BCHSOURC], [BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CM20203] ON [dbo].[CM20203] ([CHEKBKID], [SERIES], [BACHNUMB], [BCHSOURC]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20203].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20203].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20203].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20203].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20203].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20203].[BCHTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20203].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20203].[EFTGenerationTimestamp]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20203].[EFT_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20203].[SERIES]'
GO
GRANT SELECT ON  [dbo].[CM20203] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM20203] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM20203] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM20203] TO [DYNGRP]
GO
