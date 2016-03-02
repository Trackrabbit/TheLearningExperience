CREATE TABLE [dbo].[SVC00303]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQUIPID] [int] NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INSTDTE] [datetime] NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[CNFGLVL] [smallint] NOT NULL,
[CNFGSEQ] [smallint] NOT NULL,
[PARLEVEL] [smallint] NOT NULL,
[PARSEQ] [smallint] NOT NULL,
[CHDFLAG] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00303] ADD CONSTRAINT [CK__SVC00303__INSTDT__0E19EC5B] CHECK ((datepart(hour,[INSTDTE])=(0) AND datepart(minute,[INSTDTE])=(0) AND datepart(second,[INSTDTE])=(0) AND datepart(millisecond,[INSTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00303] ADD CONSTRAINT [PKSVC00303] PRIMARY KEY CLUSTERED  ([CUSTNMBR], [ADRSCODE], [CNFGLVL], [CNFGSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00303] ON [dbo].[SVC00303] ([CUSTNMBR], [ADRSCODE], [PARLEVEL], [PARSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00303] ON [dbo].[SVC00303] ([SERLNMBR], [ITEMNMBR], [PARLEVEL], [PARSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00303].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00303].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00303].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00303].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00303].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00303].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00303].[INSTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00303].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00303].[CNFGLVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00303].[CNFGSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00303].[PARLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00303].[PARSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00303].[CHDFLAG]'
GO
GRANT SELECT ON  [dbo].[SVC00303] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00303] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00303] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00303] TO [DYNGRP]
GO
