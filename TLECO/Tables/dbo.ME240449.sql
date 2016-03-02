CREATE TABLE [dbo].[ME240449]
(
[Queue_ID] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEORIGBACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEBATCHCHECKBOOKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHKCOUNT] [smallint] NOT NULL,
[CHEKAMNT] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Path] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Check_STB_FileNEW] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Check_STB_Version] [smallint] NOT NULL,
[ME_Overflow_STB_FileNEW] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Overflow_STB_Version] [smallint] NOT NULL,
[ME_Refund_Checks_STB_Fil] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEREFSTBVER] [smallint] NOT NULL,
[ME_Refund_Checks_Overflo] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEREFOVERSION] [smallint] NOT NULL,
[ME_Copy_STB_File] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Copy_STB_Version] [smallint] NOT NULL,
[ME_Copy_Overflow_STB_Fil] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Copy_Overflow_STB_Ver] [smallint] NOT NULL,
[BACHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[MEUSERID1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEUSERID2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESEQNUMBR] [int] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240449] ADD CONSTRAINT [CK__ME240449__TIME1__6213E0BA] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[ME240449] ADD CONSTRAINT [CK__ME240449__BACHDA__611FBC81] CHECK ((datepart(hour,[BACHDATE])=(0) AND datepart(minute,[BACHDATE])=(0) AND datepart(second,[BACHDATE])=(0) AND datepart(millisecond,[BACHDATE])=(0)))
GO
ALTER TABLE [dbo].[ME240449] ADD CONSTRAINT [CK__ME240449__CREATD__602B9848] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[ME240449] ADD CONSTRAINT [PKME240449] PRIMARY KEY CLUSTERED  ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [PMNTNMBR], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ME240449] ON [dbo].[ME240449] ([MESEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME240449] ON [dbo].[ME240449] ([Queue_ID], [MEBATCHCHECKBOOKID], [MEORIGBACHNUMB], [USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240449].[Queue_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[MEORIGBACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[MEBATCHCHECKBOOKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240449].[CHKCOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME240449].[CHEKAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240449].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[ME_Path]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[ME_Check_STB_FileNEW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240449].[ME_Check_STB_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[ME_Overflow_STB_FileNEW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240449].[ME_Overflow_STB_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[ME_Refund_Checks_STB_Fil]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240449].[MEREFSTBVER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[ME_Refund_Checks_Overflo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240449].[MEREFOVERSION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[ME_Copy_STB_File]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240449].[ME_Copy_STB_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[ME_Copy_Overflow_STB_Fil]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240449].[ME_Copy_Overflow_STB_Ver]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240449].[BACHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240449].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[MEUSERID1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[MEUSERID2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240449].[MESEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240449].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240449].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[ME240449] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240449] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240449] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240449] TO [DYNGRP]
GO
