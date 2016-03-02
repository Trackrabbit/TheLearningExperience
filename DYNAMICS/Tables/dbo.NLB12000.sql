CREATE TABLE [dbo].[NLB12000]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Status_Image] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB12000] ADD CONSTRAINT [PKNLB12000] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB12000].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB12000].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB12000].[Status_Image]'
GO
GRANT SELECT ON  [dbo].[NLB12000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB12000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB12000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB12000] TO [DYNGRP]
GO
