CREATE TABLE [dbo].[SVC00801]
(
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Keyword] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTDTE] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00801] ADD CONSTRAINT [CK__SVC00801__ENTDTE__377107A9] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00801] ADD CONSTRAINT [PKSVC00801] PRIMARY KEY CLUSTERED  ([SRVRECTYPE], [CALLNBR], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00801] ON [dbo].[SVC00801] ([Keyword], [LNITMSEQ], [CALLNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00801].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00801].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00801].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00801].[Keyword]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00801].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00801].[USERID]'
GO
GRANT SELECT ON  [dbo].[SVC00801] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00801] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00801] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00801] TO [DYNGRP]
GO