CREATE TABLE [dbo].[B7110302]
(
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recognition_SOrigin] [smallint] NOT NULL,
[CREDIT_MEMO_DOC_NUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPLDAMT] [numeric] (19, 5) NOT NULL,
[DATE1] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Processed] [tinyint] NOT NULL,
[BSSI_Comment] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7110302] ADD CONSTRAINT [CK__B7110302__DATE1__10095ADC] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B7110302] ADD CONSTRAINT [PKB7110302] PRIMARY KEY CLUSTERED  ([BSSI_Recognition_SOrigin], [BSSI_Recognition_SNumber], [CREDIT_MEMO_DOC_NUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B7110302] ON [dbo].[B7110302] ([BSSI_Processed], [BSSI_Recognition_SOrigin], [BSSI_Recognition_SNumber], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B7110302] ON [dbo].[B7110302] ([BSSI_Recognition_SOrigin], [BSSI_Recognition_SNumber], [BSSI_Processed], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7110302] ON [dbo].[B7110302] ([BSSI_Recognition_SOrigin], [CREDIT_MEMO_DOC_NUM], [BSSI_Processed], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B7110302] ON [dbo].[B7110302] ([BSSI_Recognition_SOrigin], [CREDIT_MEMO_DOC_NUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7110302].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7110302].[BSSI_Recognition_SOrigin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7110302].[CREDIT_MEMO_DOC_NUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7110302].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7110302].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7110302].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7110302].[BSSI_Processed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7110302].[BSSI_Comment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7110302].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B7110302] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7110302] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7110302] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7110302] TO [DYNGRP]
GO
