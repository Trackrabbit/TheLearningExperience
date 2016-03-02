CREATE TABLE [dbo].[MS273521]
(
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Scheduled_Time_XML] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_BatchScheduleType] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273521] ADD CONSTRAINT [PKMS273521] PRIMARY KEY CLUSTERED  ([BCHSOURC], [BACHNUMB], [MSO_BatchScheduleType]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273521].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273521].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273521].[MSO_Scheduled_Time_XML]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273521].[MSO_BatchScheduleType]'
GO
GRANT SELECT ON  [dbo].[MS273521] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273521] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273521] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273521] TO [DYNGRP]
GO
