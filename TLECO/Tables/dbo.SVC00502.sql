CREATE TABLE [dbo].[SVC00502]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCRDTYPE] [smallint] NOT NULL,
[QTYONHND] [numeric] (19, 5) NOT NULL,
[ATYALLOC] [numeric] (19, 5) NOT NULL,
[SVC_Delta_Type] [smallint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00502] ADD CONSTRAINT [CK__SVC00502__MODIFD__2BAA4F42] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SVC00502] ADD CONSTRAINT [PKSVC00502] PRIMARY KEY CLUSTERED  ([MODIFDT], [LOCNCODE], [ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00502].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00502].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00502].[RCRDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00502].[QTYONHND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00502].[ATYALLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00502].[SVC_Delta_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00502].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[SVC00502] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00502] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00502] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00502] TO [DYNGRP]
GO
