CREATE TABLE [dbo].[POR10310]
(
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTLNNM] [int] NOT NULL,
[INVINDX] [int] NOT NULL,
[IVEXTCST] [numeric] (19, 5) NOT NULL,
[IVOETCST] [numeric] (19, 5) NOT NULL,
[OFFINDX] [int] NOT NULL,
[IVOSEXCT] [numeric] (19, 5) NOT NULL,
[IVOSOECT] [numeric] (19, 5) NOT NULL,
[Variance_Index] [int] NOT NULL,
[IVVEXCST] [numeric] (19, 5) NOT NULL,
[IVVOECST] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POR10310] ADD CONSTRAINT [PKPOR10310] PRIMARY KEY NONCLUSTERED  ([POPRCTNM], [RCPTLNNM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POR10310].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POR10310].[RCPTLNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POR10310].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POR10310].[IVEXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POR10310].[IVOETCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POR10310].[OFFINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POR10310].[IVOSEXCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POR10310].[IVOSOECT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POR10310].[Variance_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POR10310].[IVVEXCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POR10310].[IVVOECST]'
GO
GRANT SELECT ON  [dbo].[POR10310] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POR10310] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POR10310] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POR10310] TO [DYNGRP]
GO
