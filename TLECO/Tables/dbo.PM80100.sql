CREATE TABLE [dbo].[PM80100]
(
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[RECPSTGS] [smallint] NOT NULL,
[MSCBDINC] [smallint] NOT NULL,
[BACHFREQ] [smallint] NOT NULL,
[NOFPSTGS] [smallint] NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[RCDSRMVD] [tinyint] NOT NULL,
[BCHTOTAL] [numeric] (19, 5) NOT NULL,
[CNTRLTRX] [int] NOT NULL,
[CNTRLTOT] [numeric] (19, 5) NOT NULL,
[APPROVL] [tinyint] NOT NULL,
[APPRVLDT] [datetime] NOT NULL,
[APRVLUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM80100] ADD CONSTRAINT [CK__PM80100__TIME1__2EE3E4D8] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[PM80100] ADD CONSTRAINT [CK__PM80100__APPRVLD__2CFB9C66] CHECK ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[PM80100] ADD CONSTRAINT [CK__PM80100__CREATDD__2DEFC09F] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[PM80100] ADD CONSTRAINT [CK__PM80100__GLPOSTD__2C07782D] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[PM80100] ADD CONSTRAINT [CK__PM80100__POSTEDD__2B1353F4] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[PM80100] ADD CONSTRAINT [PKPM80100] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6PM80100] ON [dbo].[PM80100] ([BACHNUMB], [BCHSOURC], [CREATDDT], [TIME1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM80100] ON [dbo].[PM80100] ([BACHNUMB], [BCHSOURC], [TRXSORCE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM80100] ON [dbo].[PM80100] ([BCHSOURC], [BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PM80100] ON [dbo].[PM80100] ([GLPOSTDT], [BACHNUMB], [BCHSOURC], [TRXSORCE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1PM80100] ON [dbo].[PM80100] ([TRXSORCE], [BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5PM80100] ON [dbo].[PM80100] ([TRXSORCE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80100].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM80100].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM80100].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80100].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80100].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80100].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80100].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80100].[RECPSTGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80100].[MSCBDINC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80100].[BACHFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80100].[NOFPSTGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80100].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80100].[RCDSRMVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80100].[BCHTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80100].[CNTRLTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80100].[CNTRLTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80100].[APPROVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM80100].[APPRVLDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80100].[APRVLUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80100].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80100].[Workflow_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80100].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM80100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM80100].[TIME1]'
GO
GRANT SELECT ON  [dbo].[PM80100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM80100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM80100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM80100] TO [DYNGRP]
GO
