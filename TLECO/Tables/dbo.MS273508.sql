CREATE TABLE [dbo].[MS273508]
(
[MSO_InstanceGUID] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ResponseGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_SegmentNUM] [int] NOT NULL,
[MSO_SegmentString] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273508] ADD CONSTRAINT [PKMS273508] PRIMARY KEY NONCLUSTERED  ([MSO_InstanceGUID], [MSO_SegmentNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273508].[MSO_InstanceGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273508].[MSO_ResponseGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273508].[MSO_SegmentNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273508].[MSO_SegmentString]'
GO
GRANT SELECT ON  [dbo].[MS273508] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273508] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273508] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273508] TO [DYNGRP]
GO
