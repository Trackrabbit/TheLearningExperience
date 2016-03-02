CREATE TABLE [dbo].[B7112302]
(
[LNITMSEQ] [int] NOT NULL,
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Line_Item_Sequence] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_Recognition_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Amount_Changed] [tinyint] NOT NULL,
[BSSI_Merged] [tinyint] NOT NULL,
[BSSI_Orig_Line_Item_Seq] [int] NOT NULL,
[BSSI_NonAdjustedLine] [tinyint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[BSSI_Recognition_Type] [smallint] NOT NULL,
[BSSI_Identifier] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7112302] ADD CONSTRAINT [CK__B7112302__ENDDAT__4ACAF94E] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B7112302] ADD CONSTRAINT [CK__B7112302__STRTDA__49D6D515] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B7112302] ADD CONSTRAINT [PKB7112302] PRIMARY KEY NONCLUSTERED  ([BSSI_Recognition_SNumber], [LNITMSEQ], [BSSI_Line_Item_Sequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112302].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7112302].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112302].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112302].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7112302].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7112302].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7112302].[BSSI_Recognition_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112302].[BSSI_Amount_Changed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112302].[BSSI_Merged]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112302].[BSSI_Orig_Line_Item_Seq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112302].[BSSI_NonAdjustedLine]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112302].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112302].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112302].[BSSI_Recognition_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7112302].[BSSI_Identifier]'
GO
GRANT SELECT ON  [dbo].[B7112302] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7112302] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7112302] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7112302] TO [DYNGRP]
GO
