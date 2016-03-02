CREATE TABLE [dbo].[B7100700]
(
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Recognition_Type] [smallint] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_Recog_Length_Period] [numeric] (19, 5) NOT NULL,
[BSSI_Recog_Length_Months] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100700] ADD CONSTRAINT [PKB7100700] PRIMARY KEY NONCLUSTERED  ([BSSI_Recog_TemplateID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100700].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100700].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100700].[BSSI_Recognition_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100700].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100700].[BSSI_Recog_Length_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100700].[BSSI_Recog_Length_Months]'
GO
GRANT SELECT ON  [dbo].[B7100700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100700] TO [DYNGRP]
GO
