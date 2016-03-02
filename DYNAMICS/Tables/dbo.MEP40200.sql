CREATE TABLE [dbo].[MEP40200]
(
[PRODID] [smallint] NOT NULL,
[PRODUCTINDEX] [smallint] NOT NULL,
[PRODNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Product_Code] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEKEY] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TMPKEY] [tinyint] NOT NULL,
[MEVersion] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESTATUS] [int] NOT NULL,
[KEYSTATUSSTR] [char] (55) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEPRODTYPE] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MEP40200] ADD CONSTRAINT [PKMEP40200] PRIMARY KEY NONCLUSTERED  ([PRODID], [PRODUCTINDEX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MEP40200] ON [dbo].[MEP40200] ([PRODNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MEP40200].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MEP40200].[PRODUCTINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MEP40200].[PRODNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MEP40200].[Product_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MEP40200].[MEKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MEP40200].[TMPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MEP40200].[MEVersion]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MEP40200].[MESTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MEP40200].[KEYSTATUSSTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MEP40200].[MEPRODTYPE]'
GO
GRANT SELECT ON  [dbo].[MEP40200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MEP40200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MEP40200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MEP40200] TO [DYNGRP]
GO
