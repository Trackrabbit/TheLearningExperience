CREATE TABLE [dbo].[SVC00102]
(
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROBCDE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRSENBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CERTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CERTDTE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00102] ADD CONSTRAINT [CK__SVC00102__CERTDT__2161CAF9] CHECK ((datepart(hour,[CERTDTE])=(0) AND datepart(minute,[CERTDTE])=(0) AND datepart(second,[CERTDTE])=(0) AND datepart(millisecond,[CERTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00102] ADD CONSTRAINT [CK__SVC00102__EXPNDA__2255EF32] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00102] ADD CONSTRAINT [PKSVC00102] PRIMARY KEY CLUSTERED  ([TECHID], [ITEMNMBR], [PROBCDE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00102] ON [dbo].[SVC00102] ([ITEMNMBR], [PROBCDE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00102].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00102].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00102].[PROBCDE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00102].[CRSENBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00102].[CERTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00102].[CERTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00102].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[SVC00102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00102] TO [DYNGRP]
GO
