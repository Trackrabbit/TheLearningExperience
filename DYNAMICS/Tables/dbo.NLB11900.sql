CREATE TABLE [dbo].[NLB11900]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB11900] ADD CONSTRAINT [PKNLB11900] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [LNITMSEQ], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB11900].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB11900].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB11900].[USERID]'
GO
GRANT SELECT ON  [dbo].[NLB11900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB11900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB11900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB11900] TO [DYNGRP]
GO
