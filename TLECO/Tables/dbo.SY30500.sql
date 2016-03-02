CREATE TABLE [dbo].[SY30500]
(
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[SERIES] [smallint] NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[RCTRXSEQ] [numeric] (19, 5) NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RVRSBACH] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHTOTAL] [numeric] (19, 5) NOT NULL,
[BACHDATE] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTRLTRX] [int] NOT NULL,
[CNTRLTOT] [numeric] (19, 5) NOT NULL,
[APPROVL] [tinyint] NOT NULL,
[APPRVLDT] [datetime] NOT NULL,
[APRVLUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIGIN] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY30500] ADD CONSTRAINT [CK__SY30500__TIME1__2CB183A3] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SY30500] ADD CONSTRAINT [CK__SY30500__APPRVLD__30821487] CHECK ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[SY30500] ADD CONSTRAINT [CK__SY30500__BACHDAT__2E99CC15] CHECK ((datepart(hour,[BACHDATE])=(0) AND datepart(minute,[BACHDATE])=(0) AND datepart(second,[BACHDATE])=(0) AND datepart(millisecond,[BACHDATE])=(0)))
GO
ALTER TABLE [dbo].[SY30500] ADD CONSTRAINT [CK__SY30500__CREATDD__2BBD5F6A] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY30500] ADD CONSTRAINT [CK__SY30500__GLPOSTD__2DA5A7DC] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[SY30500] ADD CONSTRAINT [CK__SY30500__MODIFDT__2F8DF04E] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY30500] ADD CONSTRAINT [PKSY30500] PRIMARY KEY NONCLUSTERED  ([BCHSOURC], [BACHNUMB], [CREATDDT], [TIME1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY30500] ON [dbo].[SY30500] ([TRXSORCE], [BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY30500].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY30500].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY30500].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY30500].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY30500].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY30500].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY30500].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY30500].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY30500].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY30500].[RVRSBACH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY30500].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY30500].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY30500].[BCHTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY30500].[BACHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY30500].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY30500].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY30500].[CNTRLTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY30500].[CNTRLTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY30500].[APPROVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY30500].[APPRVLDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY30500].[APRVLUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY30500].[ORIGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY30500].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY30500].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY30500].[CARDNAME]'
GO
GRANT SELECT ON  [dbo].[SY30500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY30500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY30500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY30500] TO [DYNGRP]
GO
