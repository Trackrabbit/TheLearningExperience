CREATE TABLE [dbo].[EXT20403]
(
[Extender_Event_ID] [int] NOT NULL,
[Action_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[Set_Value_Type] [smallint] NOT NULL,
[Field_ID_2] [int] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[Action_Task_Type] [smallint] NOT NULL,
[Long_Field_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Long_Field_Name_2] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20403] ADD CONSTRAINT [CK__EXT20403__TIME1__2C0CD5C4] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[EXT20403] ADD CONSTRAINT [CK__EXT20403__DATE1__2B18B18B] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[EXT20403] ADD CONSTRAINT [PKEXT20403] PRIMARY KEY NONCLUSTERED  ([Extender_Event_ID], [Action_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20403] ON [dbo].[EXT20403] ([Extender_Event_ID], [Action_Number], [Field_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3EXT20403] ON [dbo].[EXT20403] ([Extender_Event_ID], [Action_Number], [Long_Field_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20403].[Extender_Event_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20403].[Action_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20403].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20403].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20403].[Set_Value_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20403].[Field_ID_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20403].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT20403].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20403].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20403].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20403].[Action_Task_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20403].[Long_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20403].[Long_Field_Name_2]'
GO
GRANT SELECT ON  [dbo].[EXT20403] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20403] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20403] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20403] TO [DYNGRP]
GO
