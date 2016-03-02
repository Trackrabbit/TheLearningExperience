CREATE TABLE [dbo].[SY04951]
(
[PRODID] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[RPRTNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailMessageSubject] [char] (151) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[EmailMessageBody] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04951] ADD CONSTRAINT [PKSY04951] PRIMARY KEY NONCLUSTERED  ([PRODID], [RTGRSBIN], [RPRTNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04951].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY04951].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04951].[RPRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04951].[EmailMessageSubject]'
GO
GRANT SELECT ON  [dbo].[SY04951] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04951] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04951] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04951] TO [DYNGRP]
GO
