CREATE TABLE [dbo].[ME240459]
(
[Queue_ID] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDXLONG] [int] NOT NULL,
[MEORIGBACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEBATCHCHECKBOOKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHKCOUNT] [smallint] NOT NULL,
[CHEKAMNT] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240459] ADD CONSTRAINT [CK__ME240459__TIME1__0DF262F8] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[ME240459] ADD CONSTRAINT [CK__ME240459__BACHDA__0CFE3EBF] CHECK ((datepart(hour,[BACHDATE])=(0) AND datepart(minute,[BACHDATE])=(0) AND datepart(second,[BACHDATE])=(0) AND datepart(millisecond,[BACHDATE])=(0)))
GO
ALTER TABLE [dbo].[ME240459] ADD CONSTRAINT [CK__ME240459__CREATD__0B15F64D] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[ME240459] ADD CONSTRAINT [CK__ME240459__POSTED__0C0A1A86] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[ME240459] ADD CONSTRAINT [PKME240459] PRIMARY KEY CLUSTERED  ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [INDXLONG]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240459].[Queue_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240459].[INDXLONG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[MEORIGBACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[MEBATCHCHECKBOOKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240459].[CHKCOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME240459].[CHEKAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240459].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240459].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[ME_Path]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[ME_Check_STB_FileNEW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240459].[ME_Check_STB_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[ME_Overflow_STB_FileNEW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240459].[ME_Overflow_STB_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[ME_Refund_Checks_STB_Fil]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240459].[MEREFSTBVER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[ME_Refund_Checks_Overflo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240459].[MEREFOVERSION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[ME_Copy_STB_File]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240459].[ME_Copy_STB_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[ME_Copy_Overflow_STB_Fil]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240459].[ME_Copy_Overflow_STB_Ver]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240459].[BACHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240459].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[MEUSERID1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[MEUSERID2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240459].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240459].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[ME240459] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240459] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240459] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240459] TO [DYNGRP]
GO
