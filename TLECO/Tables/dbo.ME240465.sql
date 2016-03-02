CREATE TABLE [dbo].[ME240465]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSTTUS] [smallint] NOT NULL,
[Queue_ID] [smallint] NOT NULL,
[MENUMAPPROVERS] [smallint] NOT NULL,
[MEUSERID1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEUSERID2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHKCOUNT] [smallint] NOT NULL,
[CHEKAMNT] [numeric] (19, 5) NOT NULL,
[MEREQUESTER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REQSTDATE] [datetime] NOT NULL,
[REQUESTFLAG] [tinyint] NOT NULL,
[REJECTER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MECanceledBy] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEREJECTIONDATE] [datetime] NOT NULL,
[MEREJECTIONTIME] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[REJECTIONNOTE] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240465] ADD CONSTRAINT [CK__ME240465__MEREJE__0EB17D07] CHECK ((datepart(day,[MEREJECTIONTIME])=(1) AND datepart(month,[MEREJECTIONTIME])=(1) AND datepart(year,[MEREJECTIONTIME])=(1900)))
GO
ALTER TABLE [dbo].[ME240465] ADD CONSTRAINT [CK__ME240465__MEREJE__0DBD58CE] CHECK ((datepart(hour,[MEREJECTIONDATE])=(0) AND datepart(minute,[MEREJECTIONDATE])=(0) AND datepart(second,[MEREJECTIONDATE])=(0) AND datepart(millisecond,[MEREJECTIONDATE])=(0)))
GO
ALTER TABLE [dbo].[ME240465] ADD CONSTRAINT [CK__ME240465__REQSTD__0CC93495] CHECK ((datepart(hour,[REQSTDATE])=(0) AND datepart(minute,[REQSTDATE])=(0) AND datepart(second,[REQSTDATE])=(0) AND datepart(millisecond,[REQSTDATE])=(0)))
GO
ALTER TABLE [dbo].[ME240465] ADD CONSTRAINT [PKME240465] PRIMARY KEY NONCLUSTERED  ([BACHNUMB], [BCHSOURC]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME240465] ON [dbo].[ME240465] ([BCHSTTUS], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240465].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240465].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240465].[BCHSTTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240465].[Queue_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240465].[MENUMAPPROVERS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240465].[MEUSERID1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240465].[MEUSERID2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240465].[CHKCOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME240465].[CHEKAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240465].[MEREQUESTER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240465].[REQSTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240465].[REQUESTFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240465].[REJECTER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240465].[MECanceledBy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240465].[MEREJECTIONDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240465].[MEREJECTIONTIME]'
GO
GRANT SELECT ON  [dbo].[ME240465] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240465] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240465] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240465] TO [DYNGRP]
GO
