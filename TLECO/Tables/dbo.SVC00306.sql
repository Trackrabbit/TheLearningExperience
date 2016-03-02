CREATE TABLE [dbo].[SVC00306]
(
[EQUIPID] [int] NOT NULL,
[ECO_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00306] ADD CONSTRAINT [CK__SVC00306__DATE1__14C6E9EA] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SVC00306] ADD CONSTRAINT [PKSVC00306] PRIMARY KEY NONCLUSTERED  ([EQUIPID], [ECO_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00306].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00306].[ECO_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00306].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00306].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00306].[CALLNBR]'
GO
GRANT SELECT ON  [dbo].[SVC00306] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00306] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00306] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00306] TO [DYNGRP]
GO
