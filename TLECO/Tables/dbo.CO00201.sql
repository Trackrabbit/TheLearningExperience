CREATE TABLE [dbo].[CO00201]
(
[SERIES] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TYPEID] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[OPTION1] [tinyint] NOT NULL,
[OPTION2] [tinyint] NOT NULL,
[OPTION3] [tinyint] NOT NULL,
[OPTION4] [tinyint] NOT NULL,
[FieldPhysicalName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FieldDataType] [smallint] NOT NULL,
[FieldRefID] [smallint] NOT NULL,
[FilterType] [smallint] NOT NULL,
[Start_Position_String] [char] (89) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Position_String] [char] (89) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTAMNT] [numeric] (19, 5) NOT NULL,
[ENDAMNT] [numeric] (19, 5) NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[startValue] [int] NOT NULL,
[endValue] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO00201] ADD CONSTRAINT [CK__CO00201__ENDDATE__51CA0106] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[CO00201] ADD CONSTRAINT [CK__CO00201__STRTDAT__52BE253F] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[CO00201] ADD CONSTRAINT [PKCO00201] PRIMARY KEY CLUSTERED  ([SERIES], [USERID], [TYPEID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00201].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[TYPEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[OPTION1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[OPTION2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[OPTION3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[OPTION4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00201].[FieldPhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[FieldDataType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[FieldRefID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[FilterType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00201].[Start_Position_String]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00201].[End_Position_String]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CO00201].[STRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CO00201].[ENDAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00201].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CO00201].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[startValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00201].[endValue]'
GO
GRANT SELECT ON  [dbo].[CO00201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CO00201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CO00201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CO00201] TO [DYNGRP]
GO
