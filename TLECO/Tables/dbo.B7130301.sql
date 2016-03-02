CREATE TABLE [dbo].[B7130301]
(
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Line_Item_Sequence] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_Recognition_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_IsAmount_Recognized] [tinyint] NOT NULL,
[BSSI_IsAmount_Stub] [tinyint] NOT NULL,
[BSSI_Merged] [tinyint] NOT NULL,
[BSSI_Orig_Line_Item_Seq] [int] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[BSSI_Recognition_Type] [smallint] NOT NULL,
[BSSI_EventID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Identifier] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ExpiryDate] [datetime] NOT NULL,
[BSSI_ATEndDate] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7130301] ADD CONSTRAINT [CK__B7130301__BSSI_A__357AD6AD] CHECK ((datepart(hour,[BSSI_ATEndDate])=(0) AND datepart(minute,[BSSI_ATEndDate])=(0) AND datepart(second,[BSSI_ATEndDate])=(0) AND datepart(millisecond,[BSSI_ATEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7130301] ADD CONSTRAINT [CK__B7130301__BSSI_E__3486B274] CHECK ((datepart(hour,[BSSI_ExpiryDate])=(0) AND datepart(minute,[BSSI_ExpiryDate])=(0) AND datepart(second,[BSSI_ExpiryDate])=(0) AND datepart(millisecond,[BSSI_ExpiryDate])=(0)))
GO
ALTER TABLE [dbo].[B7130301] ADD CONSTRAINT [CK__B7130301__ENDDAT__33928E3B] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B7130301] ADD CONSTRAINT [CK__B7130301__STRTDA__329E6A02] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B7130301] ADD CONSTRAINT [PKB7130301] PRIMARY KEY NONCLUSTERED  ([BSSI_Recognition_SNumber], [BSSI_Line_Item_Sequence]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7130301] ON [dbo].[B7130301] ([BSSI_Recognition_SNumber], [STRTDATE], [ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7130301].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7130301].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7130301].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7130301].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7130301].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7130301].[BSSI_Recognition_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7130301].[BSSI_IsAmount_Recognized]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7130301].[BSSI_IsAmount_Stub]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7130301].[BSSI_Merged]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7130301].[BSSI_Orig_Line_Item_Seq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7130301].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7130301].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7130301].[BSSI_Recognition_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7130301].[BSSI_EventID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7130301].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7130301].[BSSI_Identifier]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7130301].[BSSI_ExpiryDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7130301].[BSSI_ATEndDate]'
GO
GRANT SELECT ON  [dbo].[B7130301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7130301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7130301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7130301] TO [DYNGRP]
GO
