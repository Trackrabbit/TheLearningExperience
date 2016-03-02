CREATE TABLE [dbo].[SY07225]
(
[ListDictID] [smallint] NOT NULL,
[ListID] [smallint] NOT NULL,
[ViewID] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PreviewPaneVisible] [tinyint] NOT NULL,
[PreviewPaneHeight] [smallint] NOT NULL,
[AdvFilterPaneVisible] [tinyint] NOT NULL,
[AdvFilterPaneHeight] [smallint] NOT NULL,
[ActionsPaneVisible] [tinyint] NOT NULL,
[IncludeWorkflowInfo] [tinyint] NOT NULL,
[ListDateRestriction] [int] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[ListOption] [int] NOT NULL,
[FactBoxVisible] [tinyint] NOT NULL,
[FactBoxWidth] [smallint] NOT NULL,
[FactBoxMode] [smallint] NOT NULL,
[FactBoxSRAVisible] [tinyint] NOT NULL,
[FactBoxSRAHeight] [smallint] NOT NULL,
[FactBoxSRADockMode] [smallint] NOT NULL,
[ListOption2] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07225] ADD CONSTRAINT [CK__SY07225__ENDDATE__71FD9BF1] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SY07225] ADD CONSTRAINT [CK__SY07225__STRTDAT__710977B8] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SY07225] ADD CONSTRAINT [PKSY07225] PRIMARY KEY NONCLUSTERED  ([ListDictID], [ListID], [ViewID], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[ListDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[ViewID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07225].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[PreviewPaneVisible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[PreviewPaneHeight]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[AdvFilterPaneVisible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[AdvFilterPaneHeight]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[ActionsPaneVisible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[IncludeWorkflowInfo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[ListDateRestriction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY07225].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY07225].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[ListOption]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[FactBoxVisible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[FactBoxWidth]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[FactBoxMode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[FactBoxSRAVisible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[FactBoxSRAHeight]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[FactBoxSRADockMode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07225].[ListOption2]'
GO
GRANT SELECT ON  [dbo].[SY07225] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07225] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07225] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07225] TO [DYNGRP]
GO
