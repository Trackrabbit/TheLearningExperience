CREATE TABLE [dbo].[DD10700]
(
[INDXLONG] [int] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDTRANUM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDACTNUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDTRANS] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDAMTDLR] [numeric] (19, 5) NOT NULL,
[AMNTOPST] [numeric] (19, 5) NOT NULL,
[DDITEM] [smallint] NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD10700] ADD CONSTRAINT [PKDD10700] PRIMARY KEY NONCLUSTERED  ([INDXLONG]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3DD10700] ON [dbo].[DD10700] ([DDITEM], [INDXLONG]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2DD10700] ON [dbo].[DD10700] ([EMPLOYID], [INDXLONG]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4DD10700] ON [dbo].[DD10700] ([USERID], [INDXLONG]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10700].[INDXLONG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10700].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10700].[DDTRANUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10700].[DDACTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10700].[DDTRANS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10700].[DDAMTDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DD10700].[AMNTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD10700].[DDITEM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10700].[ERRDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD10700].[USERID]'
GO
GRANT SELECT ON  [dbo].[DD10700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD10700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD10700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD10700] TO [DYNGRP]
GO
