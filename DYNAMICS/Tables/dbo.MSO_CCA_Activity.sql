CREATE TABLE [dbo].[MSO_CCA_Activity]
(
[CMPANYID] [smallint] NOT NULL,
[MSO_EngineGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ACTIVITYID] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MSO_CCA_Activity] ADD CONSTRAINT [PKMSO_CCA_Activity] PRIMARY KEY NONCLUSTERED  ([CMPANYID], [MSO_EngineGUID], [MSO_ACTIVITYID], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MSO_CCA_Activity].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CCA_Activity].[MSO_EngineGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MSO_CCA_Activity].[MSO_ACTIVITYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_CCA_Activity].[USERID]'
GO
GRANT SELECT ON  [dbo].[MSO_CCA_Activity] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MSO_CCA_Activity] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MSO_CCA_Activity] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MSO_CCA_Activity] TO [DYNGRP]
GO
