CREATE TABLE [dbo].[HR2DIS02]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTRYNUMBER_I] [smallint] NOT NULL,
[SEQORDER_I] [smallint] NOT NULL,
[STAGENAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[PERSONFILING_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STAGETYPE_I] [smallint] NOT NULL,
[DATEIN_I] [datetime] NOT NULL,
[DATEOUT_I] [datetime] NOT NULL,
[GB_I] [smallint] NOT NULL,
[TERMINATIONCB_I] [tinyint] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2DIS02] ADD CONSTRAINT [CK__HR2DIS02__DATE1__24FDB547] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[HR2DIS02] ADD CONSTRAINT [CK__HR2DIS02__DATEIN__25F1D980] CHECK ((datepart(hour,[DATEIN_I])=(0) AND datepart(minute,[DATEIN_I])=(0) AND datepart(second,[DATEIN_I])=(0) AND datepart(millisecond,[DATEIN_I])=(0)))
GO
ALTER TABLE [dbo].[HR2DIS02] ADD CONSTRAINT [CK__HR2DIS02__DATEOU__26E5FDB9] CHECK ((datepart(hour,[DATEOUT_I])=(0) AND datepart(minute,[DATEOUT_I])=(0) AND datepart(second,[DATEOUT_I])=(0) AND datepart(millisecond,[DATEOUT_I])=(0)))
GO
ALTER TABLE [dbo].[HR2DIS02] ADD CONSTRAINT [PKHR2DIS02] PRIMARY KEY CLUSTERED  ([EMPID_I], [ENTRYNUMBER_I], [SEQORDER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIS02].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2DIS02].[ENTRYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2DIS02].[SEQORDER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIS02].[STAGENAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2DIS02].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIS02].[PERSONFILING_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2DIS02].[STAGETYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2DIS02].[DATEIN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2DIS02].[DATEOUT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2DIS02].[GB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2DIS02].[TERMINATIONCB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2DIS02].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[HR2DIS02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2DIS02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2DIS02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2DIS02] TO [DYNGRP]
GO
