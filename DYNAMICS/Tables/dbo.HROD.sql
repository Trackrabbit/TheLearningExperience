CREATE TABLE [dbo].[HROD]
(
[DEFAULTNUMBER_I] [smallint] NOT NULL,
[TERMITEM_I] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TERMATTRIBUTE_I] [smallint] NOT NULL,
[TERMORDER_I] [smallint] NOT NULL,
[ADDTODEFAULTITEMS_I] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HROD] ADD CONSTRAINT [PKHROD] PRIMARY KEY CLUSTERED  ([DEFAULTNUMBER_I], [TERMORDER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HROD].[DEFAULTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HROD].[TERMITEM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HROD].[TERMATTRIBUTE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HROD].[TERMORDER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HROD].[ADDTODEFAULTITEMS_I]'
GO
GRANT SELECT ON  [dbo].[HROD] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HROD] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HROD] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HROD] TO [DYNGRP]
GO