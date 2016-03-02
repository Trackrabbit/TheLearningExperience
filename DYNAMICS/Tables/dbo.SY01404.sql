CREATE TABLE [dbo].[SY01404]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DICTID] [smallint] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[USRCLASS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPORTID] [smallint] NOT NULL,
[VisibleTo] [smallint] NOT NULL,
[Report_Option_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Custom_Reminder_Option] [smallint] NOT NULL,
[Record_Filter] [smallint] NOT NULL,
[Number_of_Records] [int] NOT NULL,
[Column_Filter] [smallint] NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[Field_DictID] [smallint] NOT NULL,
[Field_ResID] [smallint] NOT NULL,
[DSPASCUE] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01404] ADD CONSTRAINT [PKSY01404] PRIMARY KEY NONCLUSTERED  ([USERID], [DICTID], [CMPANYID], [USRCLASS], [REPORTID], [VisibleTo], [Report_Option_Name], [USERNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01404].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01404].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01404].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01404].[USRCLASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01404].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01404].[VisibleTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01404].[Report_Option_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01404].[USERNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01404].[Custom_Reminder_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01404].[Record_Filter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01404].[Number_of_Records]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01404].[Column_Filter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY01404].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01404].[Field_DictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01404].[Field_ResID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01404].[DSPASCUE]'
GO
GRANT SELECT ON  [dbo].[SY01404] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01404] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01404] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01404] TO [DYNGRP]
GO
