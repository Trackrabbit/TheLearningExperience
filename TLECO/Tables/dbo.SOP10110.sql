CREATE TABLE [dbo].[SOP10110]
(
[PRCSHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DESCEXPR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NTPRONLY] [tinyint] NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[PROMO] [tinyint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP10110] ADD CONSTRAINT [CK__SOP10110__ENDDAT__7BBB44FE] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10110] ADD CONSTRAINT [CK__SOP10110__STRTDA__7CAF6937] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10110] ADD CONSTRAINT [PKSOP10110] PRIMARY KEY NONCLUSTERED  ([PRCSHID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP10110] ON [dbo].[SOP10110] ([DESCEXPR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SOP10110] ON [dbo].[SOP10110] ([STRTDATE], [ENDDATE], [ACTIVE], [PRCSHID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10110].[PRCSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10110].[DESCEXPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10110].[NTPRONLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10110].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10110].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10110].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10110].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10110].[PROMO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10110].[CURNCYID]'
GO
GRANT SELECT ON  [dbo].[SOP10110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10110] TO [DYNGRP]
GO
