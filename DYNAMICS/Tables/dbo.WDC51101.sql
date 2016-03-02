CREATE TABLE [dbo].[WDC51101]
(
[WDC_Entity_ID] [int] NOT NULL,
[Node_Image] [smallint] NOT NULL,
[Node_Data] [int] NOT NULL,
[Node_State] [smallint] NOT NULL,
[Node_Overlay] [smallint] NOT NULL,
[Node_Child] [tinyint] NOT NULL,
[Node_Image_Parent1] [smallint] NOT NULL,
[Node_Data_Parent1] [int] NOT NULL,
[Node_Image_Parent2] [smallint] NOT NULL,
[Node_Data_Parent2] [int] NOT NULL,
[Node_Image_Parent3] [smallint] NOT NULL,
[Node_Data_Parent3] [int] NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WDC51101] ADD CONSTRAINT [PKWDC51101] PRIMARY KEY CLUSTERED  ([WDC_Entity_ID], [Node_Image], [Node_Data]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[WDC_Entity_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[Node_Image]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[Node_Data]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[Node_State]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[Node_Overlay]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[Node_Child]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[Node_Image_Parent1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[Node_Data_Parent1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[Node_Image_Parent2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[Node_Data_Parent2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[Node_Image_Parent3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[Node_Data_Parent3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51101].[ACTIVE]'
GO
GRANT SELECT ON  [dbo].[WDC51101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WDC51101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WDC51101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WDC51101] TO [DYNGRP]
GO
