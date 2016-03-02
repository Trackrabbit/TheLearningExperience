CREATE TABLE [dbo].[SY00500]
(
[GLPOSTDT] [datetime] NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[MKDTOPST] [tinyint] NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[RECPSTGS] [smallint] NOT NULL,
[DELBACH] [tinyint] NOT NULL,
[MSCBDINC] [smallint] NOT NULL,
[BACHFREQ] [smallint] NOT NULL,
[RCLPSTDT] [datetime] NOT NULL,
[NOFPSTGS] [smallint] NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRKDNALL] [tinyint] NOT NULL,
[CHKSPRTD] [tinyint] NOT NULL,
[RVRSBACH] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHTOTAL] [numeric] (19, 5) NOT NULL,
[BCHEMSG1] [binary] (4) NOT NULL,
[BCHEMSG2] [binary] (4) NOT NULL,
[BACHDATE] [datetime] NOT NULL,
[BCHSTRG1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSTRG2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTTOGL] [tinyint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSTTUS] [smallint] NOT NULL,
[CNTRLTRX] [int] NOT NULL,
[CNTRLTOT] [numeric] (19, 5) NOT NULL,
[PETRXCNT] [smallint] NOT NULL,
[APPROVL] [tinyint] NOT NULL,
[APPRVLDT] [datetime] NOT NULL,
[APRVLUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIGIN] [smallint] NOT NULL,
[ERRSTATE] [int] NOT NULL,
[GLBCHVAL] [binary] (4) NOT NULL,
[Computer_Check_Doc_Date] [datetime] NOT NULL,
[Sort_Checks_By] [smallint] NOT NULL,
[SEPRMTNC] [tinyint] NOT NULL,
[REPRNTED] [smallint] NOT NULL,
[CHKFRMTS] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PmtMethod] [smallint] NOT NULL,
[EFTFileFormat] [smallint] NOT NULL,
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[TIME1] [datetime] NOT NULL,
[ClearRecAmts] [tinyint] NOT NULL,
[PurchasingPrepaymentBch] [tinyint] NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[glpBatchHeadersDeleteTrigger]  on [dbo].[SY00500] for delete as  delete wkPostingValidationState  from deleted where  wkPostingValidationState.BCHSOURC = deleted.BCHSOURC and wkPostingValidationState.BACHNUMB = deleted.BACHNUMB    
GO
ALTER TABLE [dbo].[SY00500] ADD CONSTRAINT [CK__SY00500__TIME1__068BDABB] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SY00500] ADD CONSTRAINT [CK__SY00500__APPRVLD__04A39249] CHECK ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[SY00500] ADD CONSTRAINT [CK__SY00500__BACHDAT__01C7259E] CHECK ((datepart(hour,[BACHDATE])=(0) AND datepart(minute,[BACHDATE])=(0) AND datepart(second,[BACHDATE])=(0) AND datepart(millisecond,[BACHDATE])=(0)))
GO
ALTER TABLE [dbo].[SY00500] ADD CONSTRAINT [CK__SY00500__Compute__0597B682] CHECK ((datepart(hour,[Computer_Check_Doc_Date])=(0) AND datepart(minute,[Computer_Check_Doc_Date])=(0) AND datepart(second,[Computer_Check_Doc_Date])=(0) AND datepart(millisecond,[Computer_Check_Doc_Date])=(0)))
GO
ALTER TABLE [dbo].[SY00500] ADD CONSTRAINT [CK__SY00500__CREATDD__03AF6E10] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY00500] ADD CONSTRAINT [CK__SY00500__GLPOSTD__7FDEDD2C] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[SY00500] ADD CONSTRAINT [CK__SY00500__MODIFDT__02BB49D7] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY00500] ADD CONSTRAINT [CK__SY00500__RCLPSTD__00D30165] CHECK ((datepart(hour,[RCLPSTDT])=(0) AND datepart(minute,[RCLPSTDT])=(0) AND datepart(second,[RCLPSTDT])=(0) AND datepart(millisecond,[RCLPSTDT])=(0)))
GO
ALTER TABLE [dbo].[SY00500] ADD CONSTRAINT [PKSY00500] PRIMARY KEY NONCLUSTERED  ([BCHSOURC], [BACHNUMB]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY00500] ON [dbo].[SY00500] ([BACHFREQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY00500] ON [dbo].[SY00500] ([BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SY00500] ON [dbo].[SY00500] ([SERIES], [BACHFREQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SY00500] ON [dbo].[SY00500] ([SERIES], [BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SY00500] ON [dbo].[SY00500] ([SERIES], [BCHSOURC], [BACHNUMB]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SY00500] ON [dbo].[SY00500] ([SERIES], [BCHSOURC], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00500].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00500].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00500].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[MKDTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[RECPSTGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[DELBACH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[MSCBDINC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[BACHFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00500].[RCLPSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[NOFPSTGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00500].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[BRKDNALL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[CHKSPRTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[RVRSBACH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00500].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00500].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY00500].[BCHTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[BCHEMSG1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[BCHEMSG2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00500].[BACHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00500].[BCHSTRG1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00500].[BCHSTRG2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[POSTTOGL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00500].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00500].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY00500].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00500].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[BCHSTTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[CNTRLTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY00500].[CNTRLTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[PETRXCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[APPROVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00500].[APPRVLDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00500].[APRVLUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[ORIGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[ERRSTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[GLBCHVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00500].[Computer_Check_Doc_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[Sort_Checks_By]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[SEPRMTNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[REPRNTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[CHKFRMTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00500].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[PmtMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[EFTFileFormat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[Workflow_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00500].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[ClearRecAmts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00500].[PurchasingPrepaymentBch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00500].[CARDNAME]'
GO
GRANT SELECT ON  [dbo].[SY00500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY00500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY00500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY00500] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY00500] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY00500] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY00500] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY00500] TO [RAPIDGRP]
GO
