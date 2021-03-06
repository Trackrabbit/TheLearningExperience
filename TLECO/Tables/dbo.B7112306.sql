CREATE TABLE [dbo].[B7112306]
(
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Line_Item_Sequence] [int] NOT NULL,
[BSSI_Recognition_Type] [smallint] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_Recog_Length_Period] [numeric] (19, 5) NOT NULL,
[BSSI_Recog_Length_Months] [numeric] (19, 5) NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7112306] ADD CONSTRAINT [CK__B7112306__ENDDAT__657EEF8A] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B7112306] ADD CONSTRAINT [CK__B7112306__STRTDA__648ACB51] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B7112306] ADD CONSTRAINT [PKB7112306] PRIMARY KEY NONCLUSTERED  ([BSSI_Recognition_SNumber], [LNITMSEQ], [BSSI_Line_Item_Sequence]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7112306] ON [dbo].[B7112306] ([BSSI_Recognition_SNumber], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7112306].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112306].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112306].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112306].[BSSI_Recognition_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112306].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7112306].[BSSI_Recog_Length_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7112306].[BSSI_Recog_Length_Months]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7112306].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7112306].[ENDDATE]'
GO
GRANT SELECT ON  [dbo].[B7112306] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7112306] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7112306] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7112306] TO [DYNGRP]
GO
