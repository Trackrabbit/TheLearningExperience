CREATE TABLE [dbo].[UPR10501]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Pay_Schedule] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[TRXNUMBER] [int] NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[PayCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNTSTOPY] [numeric] (19, 5) NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCALTAX] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHFTCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DAYSWRDK] [int] NOT NULL,
[WKSWRKD] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[CMMTTEXT] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10501] ADD CONSTRAINT [CK__UPR10501__TRXDAT__7616155D] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR10501] ADD CONSTRAINT [PKUPR10501] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [Pay_Schedule], [YEAR1], [PERIODID], [TRXNUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10501] ON [dbo].[UPR10501] ([EMPLOYID], [Pay_Schedule], [YEAR1], [PERIODID], [PayCode], [TRXDATE], [TRXNUMBER]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10501].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10501].[Pay_Schedule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10501].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10501].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10501].[TRXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10501].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10501].[PayCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10501].[UNTSTOPY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10501].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10501].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10501].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10501].[LOCALTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10501].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10501].[DAYSWRDK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10501].[WKSWRKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10501].[SEQNUMBR]'
GO
GRANT SELECT ON  [dbo].[UPR10501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10501] TO [DYNGRP]
GO
