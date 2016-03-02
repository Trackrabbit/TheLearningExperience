CREATE TABLE [dbo].[POP30200]
(
[POPRequisitionNumber] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Requisition_Note_Index] [numeric] (19, 5) NOT NULL,
[RequisitionDescription] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RequisitionStatus] [smallint] NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comment_Note_Index] [numeric] (19, 5) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[REQDATE] [datetime] NOT NULL,
[REQSTDBY] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRSTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTACT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAX] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[USER2ENT] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Flags] [smallint] NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[DomainUserName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__POP30200__DEX_RO__5210BAA3] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POP30200] ADD CONSTRAINT [CK__POP30200__CREATD__55DE4FF5] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[POP30200] ADD CONSTRAINT [CK__POP30200__DOCDAT__56D2742E] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30200] ADD CONSTRAINT [CK__POP30200__MODIFD__57C69867] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[POP30200] ADD CONSTRAINT [CK__POP30200__REQDAT__58BABCA0] CHECK ((datepart(hour,[REQDATE])=(0) AND datepart(minute,[REQDATE])=(0) AND datepart(second,[REQDATE])=(0) AND datepart(millisecond,[REQDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30200] ADD CONSTRAINT [PKPOP30200] PRIMARY KEY NONCLUSTERED  ([POPRequisitionNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP30200] ON [dbo].[POP30200] ([DOCDATE], [POPRequisitionNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5POP30200] ON [dbo].[POP30200] ([REQDATE], [POPRequisitionNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POP30200] ON [dbo].[POP30200] ([REQSTDBY], [POPRequisitionNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4POP30200] ON [dbo].[POP30200] ([RequisitionStatus], [POPRequisitionNumber]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[POPRequisitionNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30200].[Requisition_Note_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[RequisitionDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30200].[RequisitionStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30200].[Comment_Note_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30200].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30200].[REQDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[REQSTDBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[PRSTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[FAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30200].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30200].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30200].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[USER2ENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30200].[Flags]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30200].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30200].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[DomainUserName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30200].[USERDEF2]'
GO
GRANT SELECT ON  [dbo].[POP30200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP30200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP30200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP30200] TO [DYNGRP]
GO
