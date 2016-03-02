CREATE TABLE [dbo].[EXT20404]
(
[Extender_Event_ID] [int] NOT NULL,
[Action_Number] [smallint] NOT NULL,
[Extender_Trx_Option] [smallint] NOT NULL,
[Extender_Trx_Value_Type] [smallint] NOT NULL,
[Field_ID] [int] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[DATE1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20404] ADD CONSTRAINT [CK__EXT20404__DATE1__5F776B31] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[EXT20404] ADD CONSTRAINT [PKEXT20404] PRIMARY KEY NONCLUSTERED  ([Extender_Event_ID], [Action_Number], [Extender_Trx_Option]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20404].[Extender_Event_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20404].[Action_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20404].[Extender_Trx_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20404].[Extender_Trx_Value_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20404].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20404].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT20404].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20404].[DATE1]'
GO
GRANT SELECT ON  [dbo].[EXT20404] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20404] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20404] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20404] TO [DYNGRP]
GO
