CREATE TABLE [dbo].[B7140002]
(
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[BSSI_Line_Item_Sequence] [int] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[BSSI_Identifier] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_OrigDeferralID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ReasonForChange] [char] (55) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_MethodChange] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7140002] ADD CONSTRAINT [CK__B7140002__TIME1__162226E5] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[B7140002] ADD CONSTRAINT [CK__B7140002__MODIFD__152E02AC] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[B7140002] ADD CONSTRAINT [PKB7140002] PRIMARY KEY CLUSTERED  ([SOPNUMBE], [SOPTYPE], [LNITMSEQ], [CMPNTSEQ], [BSSI_Line_Item_Sequence], [MDFUSRID], [MODIFDT], [TIME1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7140002].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140002].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140002].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140002].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140002].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7140002].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7140002].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7140002].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7140002].[BSSI_Identifier]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7140002].[BSSI_OrigDeferralID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7140002].[BSSI_ReasonForChange]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140002].[BSSI_MethodChange]'
GO
GRANT SELECT ON  [dbo].[B7140002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7140002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7140002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7140002] TO [DYNGRP]
GO
