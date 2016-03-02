CREATE TABLE [dbo].[EXT20402]
(
[Extender_Event_ID] [int] NOT NULL,
[Action_Number] [smallint] NOT NULL,
[Condition_Number] [smallint] NOT NULL,
[Field_ID] [int] NOT NULL,
[Long_Field_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExtenderActionCondition] [smallint] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRGB255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[From_Amount] [numeric] (19, 5) NOT NULL,
[To_Amount] [numeric] (19, 5) NOT NULL,
[From_Date] [datetime] NOT NULL,
[TODATE] [datetime] NOT NULL,
[From_Time] [datetime] NOT NULL,
[To_Time] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20402] ADD CONSTRAINT [CK__EXT20402__From_T__218F4751] CHECK ((datepart(day,[From_Time])=(1) AND datepart(month,[From_Time])=(1) AND datepart(year,[From_Time])=(1900)))
GO
ALTER TABLE [dbo].[EXT20402] ADD CONSTRAINT [CK__EXT20402__To_Tim__22836B8A] CHECK ((datepart(day,[To_Time])=(1) AND datepart(month,[To_Time])=(1) AND datepart(year,[To_Time])=(1900)))
GO
ALTER TABLE [dbo].[EXT20402] ADD CONSTRAINT [CK__EXT20402__From_D__1FA6FEDF] CHECK ((datepart(hour,[From_Date])=(0) AND datepart(minute,[From_Date])=(0) AND datepart(second,[From_Date])=(0) AND datepart(millisecond,[From_Date])=(0)))
GO
ALTER TABLE [dbo].[EXT20402] ADD CONSTRAINT [CK__EXT20402__TODATE__209B2318] CHECK ((datepart(hour,[TODATE])=(0) AND datepart(minute,[TODATE])=(0) AND datepart(second,[TODATE])=(0) AND datepart(millisecond,[TODATE])=(0)))
GO
ALTER TABLE [dbo].[EXT20402] ADD CONSTRAINT [PKEXT20402] PRIMARY KEY NONCLUSTERED  ([Extender_Event_ID], [Action_Number], [Condition_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20402].[Extender_Event_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20402].[Action_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20402].[Condition_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20402].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20402].[Long_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20402].[ExtenderActionCondition]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20402].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20402].[STRGB255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT20402].[From_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT20402].[To_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20402].[From_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20402].[TODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20402].[From_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20402].[To_Time]'
GO
GRANT SELECT ON  [dbo].[EXT20402] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20402] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20402] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20402] TO [DYNGRP]
GO
