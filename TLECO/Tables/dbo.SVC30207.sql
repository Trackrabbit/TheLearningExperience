CREATE TABLE [dbo].[SVC30207]
(
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQPLINE] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30207] ADD CONSTRAINT [PKSVC30207] PRIMARY KEY NONCLUSTERED  ([SRVRECTYPE], [CALLNBR], [EQPLINE], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC30207] ON [dbo].[SVC30207] ([SRVRECTYPE], [CALLNBR], [TECHID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC30207] ON [dbo].[SVC30207] ([TECHID], [SRVRECTYPE], [CALLNBR], [EQPLINE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30207].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30207].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30207].[EQPLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30207].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30207].[TECHID]'
GO
GRANT SELECT ON  [dbo].[SVC30207] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30207] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30207] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30207] TO [DYNGRP]
GO