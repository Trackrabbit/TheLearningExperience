CREATE TABLE [dbo].[B7140001]
(
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[BSSI_Line_Item_Sequence] [int] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_OrigDeferralEndDate] [datetime] NOT NULL,
[BSSI_ReasonForChange] [char] (55) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_MethodEndDateChg] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7140001] ADD CONSTRAINT [CK__B7140001__TIME1__0AB07439] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[B7140001] ADD CONSTRAINT [CK__B7140001__BSSI_O__0C98BCAB] CHECK ((datepart(hour,[BSSI_OrigDeferralEndDate])=(0) AND datepart(minute,[BSSI_OrigDeferralEndDate])=(0) AND datepart(second,[BSSI_OrigDeferralEndDate])=(0) AND datepart(millisecond,[BSSI_OrigDeferralEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7140001] ADD CONSTRAINT [CK__B7140001__ENDDAT__0BA49872] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B7140001] ADD CONSTRAINT [CK__B7140001__MODIFD__09BC5000] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[B7140001] ADD CONSTRAINT [PKB7140001] PRIMARY KEY CLUSTERED  ([SOPNUMBE], [SOPTYPE], [LNITMSEQ], [CMPNTSEQ], [BSSI_Line_Item_Sequence], [MDFUSRID], [MODIFDT], [TIME1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7140001].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140001].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140001].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140001].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140001].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7140001].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7140001].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7140001].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7140001].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7140001].[BSSI_OrigDeferralEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7140001].[BSSI_ReasonForChange]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140001].[BSSI_MethodEndDateChg]'
GO
GRANT SELECT ON  [dbo].[B7140001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7140001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7140001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7140001] TO [DYNGRP]
GO
