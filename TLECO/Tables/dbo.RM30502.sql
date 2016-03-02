CREATE TABLE [dbo].[RM30502]
(
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPRNTNT] [tinyint] NOT NULL,
[TRXMISNG] [tinyint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[BACHFREQ] [smallint] NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPROVL] [tinyint] NOT NULL,
[APPRVLDT] [datetime] NOT NULL,
[APRVLUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTRLTOT] [numeric] (19, 5) NOT NULL,
[CNTRLTRX] [int] NOT NULL,
[BCHTOTAL] [numeric] (19, 5) NOT NULL,
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM30502] ADD CONSTRAINT [CK__RM30502__TIME1__57E5FA6B] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[RM30502] ADD CONSTRAINT [CK__RM30502__APPRVLD__55FDB1F9] CHECK ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[RM30502] ADD CONSTRAINT [CK__RM30502__CREATDD__56F1D632] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[RM30502] ADD CONSTRAINT [CK__RM30502__GLPOSTD__55098DC0] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[RM30502] ADD CONSTRAINT [PKRM30502] PRIMARY KEY NONCLUSTERED  ([TRXSORCE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5RM30502] ON [dbo].[RM30502] ([BACHNUMB], [BCHSOURC], [CREATDDT], [TIME1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4RM30502] ON [dbo].[RM30502] ([BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1RM30502] ON [dbo].[RM30502] ([BCHSOURC], [BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM30502] ON [dbo].[RM30502] ([GLPOSTDT], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30502].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM30502].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30502].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30502].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30502].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30502].[REPRNTNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30502].[TRXMISNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30502].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30502].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30502].[BACHFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30502].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30502].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30502].[APPROVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM30502].[APPRVLDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30502].[APRVLUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30502].[CNTRLTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30502].[CNTRLTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30502].[BCHTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30502].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30502].[Workflow_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30502].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM30502].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM30502].[TIME1]'
GO
GRANT SELECT ON  [dbo].[RM30502] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM30502] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM30502] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM30502] TO [DYNGRP]
GO
