CREATE TABLE [dbo].[DD20101]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDXLONG] [int] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[DEDNMTHD] [smallint] NOT NULL,
[DEDUCTON] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDPRE] [tinyint] NOT NULL,
[DDPRECNT] [smallint] NOT NULL,
[DDPCT] [smallint] NOT NULL,
[DDAMTDLR] [numeric] (19, 5) NOT NULL,
[DDACTNUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDTRANUM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDTRANS] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD20101] ADD CONSTRAINT [PKDD20101] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [INDXLONG]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD20101].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD20101].[INDXLONG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD20101].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD20101].[DEDNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD20101].[DEDUCTON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD20101].[DDPRE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD20101].[DDPRECNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD20101].[DDPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD20101].[DDAMTDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD20101].[DDACTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD20101].[DDTRANUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD20101].[DDTRANS]'
GO
GRANT SELECT ON  [dbo].[DD20101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD20101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD20101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD20101] TO [DYNGRP]
GO
