CREATE TABLE [dbo].[HRORI042]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORSETUPCODE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORSETUPNAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEIN_I] [datetime] NOT NULL,
[DATEOUT_I] [datetime] NOT NULL,
[CLOSEDBY_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DATEOFLASTCHANGE_I] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRORI042] ADD CONSTRAINT [CK__HRORI042__DATEIN__35F3371F] CHECK ((datepart(hour,[DATEIN_I])=(0) AND datepart(minute,[DATEIN_I])=(0) AND datepart(second,[DATEIN_I])=(0) AND datepart(millisecond,[DATEIN_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI042] ADD CONSTRAINT [CK__HRORI042__DATEOF__36E75B58] CHECK ((datepart(hour,[DATEOFLASTCHANGE_I])=(0) AND datepart(minute,[DATEOFLASTCHANGE_I])=(0) AND datepart(second,[DATEOFLASTCHANGE_I])=(0) AND datepart(millisecond,[DATEOFLASTCHANGE_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI042] ADD CONSTRAINT [CK__HRORI042__DATEOU__37DB7F91] CHECK ((datepart(hour,[DATEOUT_I])=(0) AND datepart(minute,[DATEOUT_I])=(0) AND datepart(second,[DATEOUT_I])=(0) AND datepart(millisecond,[DATEOUT_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI042] ADD CONSTRAINT [PKHRORI042] PRIMARY KEY CLUSTERED  ([EMPID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI042].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI042].[ORSETUPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI042].[ORSETUPNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI042].[DATEIN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI042].[DATEOUT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI042].[CLOSEDBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRORI042].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI042].[DATEOFLASTCHANGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI042].[USERID]'
GO
GRANT SELECT ON  [dbo].[HRORI042] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRORI042] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRORI042] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRORI042] TO [DYNGRP]
GO
