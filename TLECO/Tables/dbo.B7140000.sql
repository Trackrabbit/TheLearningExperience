CREATE TABLE [dbo].[B7140000]
(
[BSSI_Recognition_SOrigin] [smallint] NOT NULL,
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_OrigDeferralEndDate] [datetime] NOT NULL,
[BSSI_RecalculationDate] [datetime] NOT NULL,
[BSSI_ReasonForChange] [char] (55) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_OriginEndDateChange] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7140000] ADD CONSTRAINT [CK__B7140000__TIME1__2FB7105F] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[B7140000] ADD CONSTRAINT [CK__B7140000__BSSI_O__319F58D1] CHECK ((datepart(hour,[BSSI_OrigDeferralEndDate])=(0) AND datepart(minute,[BSSI_OrigDeferralEndDate])=(0) AND datepart(second,[BSSI_OrigDeferralEndDate])=(0) AND datepart(millisecond,[BSSI_OrigDeferralEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7140000] ADD CONSTRAINT [CK__B7140000__BSSI_R__32937D0A] CHECK ((datepart(hour,[BSSI_RecalculationDate])=(0) AND datepart(minute,[BSSI_RecalculationDate])=(0) AND datepart(second,[BSSI_RecalculationDate])=(0) AND datepart(millisecond,[BSSI_RecalculationDate])=(0)))
GO
ALTER TABLE [dbo].[B7140000] ADD CONSTRAINT [CK__B7140000__ENDDAT__30AB3498] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B7140000] ADD CONSTRAINT [CK__B7140000__MODIFD__2EC2EC26] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[B7140000] ADD CONSTRAINT [PKB7140000] PRIMARY KEY NONCLUSTERED  ([BSSI_Recognition_SOrigin], [BSSI_Recognition_SNumber], [MDFUSRID], [MODIFDT], [TIME1]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL2B7140000] ON [dbo].[B7140000] ([BSSI_Recognition_SOrigin], [BSSI_Recognition_SNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7140000] ON [dbo].[B7140000] ([BSSI_Recognition_SOrigin], [BSSI_Recognition_SNumber], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140000].[BSSI_Recognition_SOrigin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7140000].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7140000].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7140000].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7140000].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7140000].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7140000].[BSSI_OrigDeferralEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7140000].[BSSI_RecalculationDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7140000].[BSSI_ReasonForChange]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7140000].[BSSI_OriginEndDateChange]'
GO
GRANT SELECT ON  [dbo].[B7140000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7140000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7140000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7140000] TO [DYNGRP]
GO
