CREATE TABLE [dbo].[MC40300]
(
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[EXGTBDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXTBLSRC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATEEXPR] [smallint] NOT NULL,
[DYSTINCR] [smallint] NOT NULL,
[RATEVARC] [numeric] (19, 7) NOT NULL,
[TRXDTDEF] [smallint] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[PRVDSLMT] [smallint] NOT NULL,
[DATELMTS] [smallint] NOT NULL,
[Base_Exchange_Rate_On] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC40300] ADD CONSTRAINT [PKMC40300] PRIMARY KEY NONCLUSTERED  ([EXGTBLID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3MC40300] ON [dbo].[MC40300] ([CURNCYID], [EXGTBLID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC40300] ON [dbo].[MC40300] ([EXGTBDSC], [EXGTBLID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40300].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC40300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40300].[EXGTBDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40300].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40300].[EXTBLSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40300].[RATEEXPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40300].[DYSTINCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC40300].[RATEVARC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40300].[TRXDTDEF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40300].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40300].[PRVDSLMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40300].[DATELMTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40300].[Base_Exchange_Rate_On]'
GO
GRANT SELECT ON  [dbo].[MC40300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC40300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC40300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC40300] TO [DYNGRP]
GO
