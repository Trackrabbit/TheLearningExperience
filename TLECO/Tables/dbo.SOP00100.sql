CREATE TABLE [dbo].[SOP00100]
(
[PRCHLDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PASSWORD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFERPHOL] [tinyint] NOT NULL,
[POSTPHOL] [tinyint] NOT NULL,
[FUFIPHOL] [tinyint] NOT NULL,
[PRINPHOL] [tinyint] NOT NULL,
[WORKFLOWHOLD] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[USER2ENT] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP00100] ADD CONSTRAINT [CK__SOP00100__CREATD__418EA369] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SOP00100] ADD CONSTRAINT [CK__SOP00100__MODIFD__4282C7A2] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SOP00100] ADD CONSTRAINT [PKSOP00100] PRIMARY KEY NONCLUSTERED  ([PRCHLDID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP00100].[PRCHLDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP00100].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP00100].[PASSWORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP00100].[XFERPHOL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP00100].[POSTPHOL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP00100].[FUFIPHOL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP00100].[PRINPHOL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP00100].[WORKFLOWHOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP00100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP00100].[USER2ENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP00100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP00100].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[SOP00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP00100] TO [DYNGRP]
GO
