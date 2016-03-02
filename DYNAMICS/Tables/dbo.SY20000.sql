CREATE TABLE [dbo].[SY20000]
(
[TemplateID] [int] NOT NULL,
[DSPLNAME] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PredefinedTemplateID] [int] NOT NULL,
[EntityDriven] [tinyint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[RESID] [smallint] NOT NULL,
[ReportStatus] [smallint] NOT NULL,
[Report_Series_DictID] [smallint] NOT NULL,
[ReportSeries_ID] [smallint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY20000] ADD CONSTRAINT [CK__SY20000__CREATDD__12FDD1B2] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY20000] ADD CONSTRAINT [CK__SY20000__MODIFDT__13F1F5EB] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY20000] ADD CONSTRAINT [PKSY20000] PRIMARY KEY NONCLUSTERED  ([TemplateID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY20000] ON [dbo].[SY20000] ([PRODID], [RESID], [ReportStatus], [DSPLNAME]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY20000] ON [dbo].[SY20000] ([Report_Series_DictID], [ReportSeries_ID], [DSPLNAME], [TemplateID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20000].[TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY20000].[DSPLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY20000].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20000].[PredefinedTemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20000].[EntityDriven]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20000].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20000].[RESID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20000].[ReportStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20000].[Report_Series_DictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20000].[ReportSeries_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY20000].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY20000].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY20000].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY20000].[CRUSRID]'
GO
GRANT SELECT ON  [dbo].[SY20000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY20000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY20000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY20000] TO [DYNGRP]
GO
