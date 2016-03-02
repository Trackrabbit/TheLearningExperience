CREATE TABLE [dbo].[MC40301]
(
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DFLTRATE] [tinyint] NOT NULL,
[REALGAIN] [int] NOT NULL,
[REALLOSS] [int] NOT NULL,
[UNRLGAIN] [int] NOT NULL,
[UNRLLOSS] [int] NOT NULL,
[FINOFFST] [int] NOT NULL,
[PUROFFST] [int] NOT NULL,
[SLSOFFST] [int] NOT NULL,
[RNDWTOFF] [int] NOT NULL,
[RNDDIFF] [int] NOT NULL,
[Base_Exchange_Rate_On] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC40301] ADD CONSTRAINT [PKMC40301] PRIMARY KEY NONCLUSTERED  ([RATETPID], [CURNCYID], [EXGTBLID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4MC40301] ON [dbo].[MC40301] ([CURNCYID], [DFLTRATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC40301] ON [dbo].[MC40301] ([CURNCYID], [RATETPID], [Base_Exchange_Rate_On], [EXGTBLID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3MC40301] ON [dbo].[MC40301] ([EXGTBLID], [RATETPID], [CURNCYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40301].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40301].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40301].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40301].[DFLTRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40301].[REALGAIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40301].[REALLOSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40301].[UNRLGAIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40301].[UNRLLOSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40301].[FINOFFST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40301].[PUROFFST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40301].[SLSOFFST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40301].[RNDWTOFF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40301].[RNDDIFF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40301].[Base_Exchange_Rate_On]'
GO
GRANT SELECT ON  [dbo].[MC40301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC40301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC40301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC40301] TO [DYNGRP]
GO
