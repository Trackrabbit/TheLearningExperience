CREATE TABLE [dbo].[ERB90450]
(
[Data_Connection_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Value_Number] [smallint] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRGB255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[From_Amount] [numeric] (19, 5) NOT NULL,
[To_Amount] [numeric] (19, 5) NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDTIME] [datetime] NOT NULL,
[From_Window_Number] [smallint] NOT NULL,
[To_Window_Number] [smallint] NOT NULL,
[From_Field_Number] [smallint] NOT NULL,
[To_Field_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB90450] ADD CONSTRAINT [CK__ERB90450__ENDTIM__7993056A] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[ERB90450] ADD CONSTRAINT [CK__ERB90450__STRTTI__7B7B4DDC] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[ERB90450] ADD CONSTRAINT [CK__ERB90450__ENDDAT__789EE131] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[ERB90450] ADD CONSTRAINT [CK__ERB90450__STRTDA__7A8729A3] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[ERB90450] ADD CONSTRAINT [PKERB90450] PRIMARY KEY CLUSTERED  ([Data_Connection_ID], [LNITMSEQ], [Value_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB90450].[Data_Connection_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB90450].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB90450].[Value_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB90450].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB90450].[STRGB255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ERB90450].[From_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ERB90450].[To_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ERB90450].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ERB90450].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ERB90450].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ERB90450].[ENDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB90450].[From_Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB90450].[To_Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB90450].[From_Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB90450].[To_Field_Number]'
GO
GRANT SELECT ON  [dbo].[ERB90450] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB90450] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB90450] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB90450] TO [DYNGRP]
GO
