CREATE TABLE [dbo].[B0510051]
(
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKAMNT] [numeric] (19, 5) NOT NULL,
[DATERECD] [datetime] NOT NULL,
[MJW_Date_Deposited] [datetime] NOT NULL,
[MJW_Date_Acknowledge] [datetime] NOT NULL,
[MJW_Date_Accept] [datetime] NOT NULL,
[MJW_Date_Paid] [datetime] NOT NULL,
[RCPTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Investment_Check_Vo] [tinyint] NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510051] ADD CONSTRAINT [CK__B0510051__DATERE__5E870DE1] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[B0510051] ADD CONSTRAINT [CK__B0510051__MJW_Da__61637A8C] CHECK ((datepart(hour,[MJW_Date_Accept])=(0) AND datepart(minute,[MJW_Date_Accept])=(0) AND datepart(second,[MJW_Date_Accept])=(0) AND datepart(millisecond,[MJW_Date_Accept])=(0)))
GO
ALTER TABLE [dbo].[B0510051] ADD CONSTRAINT [CK__B0510051__MJW_Da__606F5653] CHECK ((datepart(hour,[MJW_Date_Acknowledge])=(0) AND datepart(minute,[MJW_Date_Acknowledge])=(0) AND datepart(second,[MJW_Date_Acknowledge])=(0) AND datepart(millisecond,[MJW_Date_Acknowledge])=(0)))
GO
ALTER TABLE [dbo].[B0510051] ADD CONSTRAINT [CK__B0510051__MJW_Da__5F7B321A] CHECK ((datepart(hour,[MJW_Date_Deposited])=(0) AND datepart(minute,[MJW_Date_Deposited])=(0) AND datepart(second,[MJW_Date_Deposited])=(0) AND datepart(millisecond,[MJW_Date_Deposited])=(0)))
GO
ALTER TABLE [dbo].[B0510051] ADD CONSTRAINT [CK__B0510051__MJW_Da__62579EC5] CHECK ((datepart(hour,[MJW_Date_Paid])=(0) AND datepart(minute,[MJW_Date_Paid])=(0) AND datepart(second,[MJW_Date_Paid])=(0) AND datepart(millisecond,[MJW_Date_Paid])=(0)))
GO
ALTER TABLE [dbo].[B0510051] ADD CONSTRAINT [PKB0510051] PRIMARY KEY NONCLUSTERED  ([MJW_Offering_ID], [MJW_Investment_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510051] ON [dbo].[B0510051] ([MJW_Investment_Number], [MJW_Offering_ID], [DATERECD], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510051].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510051].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510051].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510051].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510051].[CHEKAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510051].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510051].[MJW_Date_Deposited]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510051].[MJW_Date_Acknowledge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510051].[MJW_Date_Accept]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510051].[MJW_Date_Paid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510051].[RCPTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510051].[BSSI_Investment_Check_Vo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510051].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510051].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B0510051] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510051] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510051] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510051] TO [DYNGRP]
GO
