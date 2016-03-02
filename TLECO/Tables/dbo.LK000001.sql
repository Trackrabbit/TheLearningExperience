CREATE TABLE [dbo].[LK000001]
(
[KEYNUMBR] [smallint] NOT NULL,
[LK_Zero_Balance] [tinyint] NOT NULL,
[LK_Archive_Date] [datetime] NOT NULL,
[LK_Single_Account] [tinyint] NOT NULL,
[LK_Allow_Delete] [tinyint] NOT NULL,
[LK_Password] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LK_Next_Link_No] [int] NOT NULL,
[LK_ReUseLinks] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LK000001] ADD CONSTRAINT [CK__LK000001__LK_Arc__01F34141] CHECK ((datepart(hour,[LK_Archive_Date])=(0) AND datepart(minute,[LK_Archive_Date])=(0) AND datepart(second,[LK_Archive_Date])=(0) AND datepart(millisecond,[LK_Archive_Date])=(0)))
GO
ALTER TABLE [dbo].[LK000001] ADD CONSTRAINT [PKLK000001] PRIMARY KEY CLUSTERED  ([KEYNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000001].[KEYNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000001].[LK_Zero_Balance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[LK000001].[LK_Archive_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000001].[LK_Single_Account]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000001].[LK_Allow_Delete]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000001].[LK_Password]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000001].[LK_Next_Link_No]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK000001].[LK_ReUseLinks]'
GO
GRANT SELECT ON  [dbo].[LK000001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[LK000001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[LK000001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[LK000001] TO [DYNGRP]
GO
