CREATE TABLE [dbo].[SY04950]
(
[PRODID] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[Report_Option_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPRTNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email_Send_Attachments] [tinyint] NOT NULL,
[EmailFileFormat] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[EmailToAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailCcAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailBccAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04950] ADD CONSTRAINT [PKSY04950] PRIMARY KEY NONCLUSTERED  ([PRODID], [RTGRSBIN], [RPRTNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04950].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY04950].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04950].[Report_Option_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04950].[RPRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04950].[Email_Send_Attachments]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04950].[EmailFileFormat]'
GO
GRANT SELECT ON  [dbo].[SY04950] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04950] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04950] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04950] TO [DYNGRP]
GO
