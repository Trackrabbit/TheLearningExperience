CREATE TABLE [dbo].[SVC07100]
(
[SVC_Issue_Number] [int] NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_CBR_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Action] [smallint] NOT NULL,
[SVC_Template_Call_Number] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC07100] ADD CONSTRAINT [PKSVC07100] PRIMARY KEY NONCLUSTERED  ([SVC_Issue_Number], [SRVRECTYPE], [CALLNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC07100].[SVC_Issue_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC07100].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07100].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07100].[SVC_CBR_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC07100].[SVC_Action]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC07100].[SVC_Template_Call_Number]'
GO
GRANT SELECT ON  [dbo].[SVC07100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC07100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC07100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC07100] TO [DYNGRP]
GO
