CREATE TABLE [dbo].[NLB11300]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
ALTER TABLE [dbo].[NLB11300] ADD CONSTRAINT [CK__NLB11300__ENDTIM__49E3F248] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[NLB11300] ADD CONSTRAINT [CK__NLB11300__STRTTI__4BCC3ABA] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[NLB11300] ADD CONSTRAINT [CK__NLB11300__ENDDAT__48EFCE0F] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[NLB11300] ADD CONSTRAINT [CK__NLB11300__STRTDA__4AD81681] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[NLB11300] ADD CONSTRAINT [PKNLB11300] PRIMARY KEY CLUSTERED  ([Navigation_ID], [LNITMSEQ], [Value_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB11300].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11300].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11300].[Value_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB11300].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB11300].[STRGB255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NLB11300].[From_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NLB11300].[To_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NLB11300].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NLB11300].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NLB11300].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NLB11300].[ENDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11300].[From_Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11300].[To_Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11300].[From_Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11300].[To_Field_Number]'
GO
GRANT SELECT ON  [dbo].[NLB11300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB11300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB11300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB11300] TO [DYNGRP]
GO
