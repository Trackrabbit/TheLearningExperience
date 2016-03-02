CREATE TABLE [dbo].[SC9400]
(
[PRODID] [smallint] NOT NULL,
[RealTimeId] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Form_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TABLTECH] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TBLPHYSNM] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TriggerType] [smallint] NOT NULL,
[Event_Type] [smallint] NOT NULL,
[URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SC9400] ADD CONSTRAINT [PKSC9400] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SC9400] ON [dbo].[SC9400] ([INTERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SC9400] ON [dbo].[SC9400] ([TABLTECH], [Event_Type], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SC9400] ON [dbo].[SC9400] ([TABLTECH], [Event_Type], [Extender_Form_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SC9400].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9400].[RealTimeId]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9400].[Extender_Form_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9400].[TABLTECH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9400].[TBLPHYSNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9400].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SC9400].[TriggerType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SC9400].[Event_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SC9400].[URL]'
GO
GRANT SELECT ON  [dbo].[SC9400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SC9400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SC9400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SC9400] TO [DYNGRP]
GO
