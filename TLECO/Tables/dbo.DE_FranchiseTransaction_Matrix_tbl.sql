CREATE TABLE [dbo].[DE_FranchiseTransaction_Matrix_tbl]
(
[MilestoneID] [int] NOT NULL IDENTITY(1, 1),
[MilestoneName] [nchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ActionDays] [smallint] NULL,
[SOPDocID] [nchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SalesType] [nchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ItemNumber] [nchar] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MilestoneCode] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SalesTypeCode] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DE_FranchiseTransaction_Matrix_tbl] ADD CONSTRAINT [PK__DE_Franc__09C48058922F8618] PRIMARY KEY CLUSTERED  ([MilestoneID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DE_FranchiseTransaction_Matrix_tbl] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_FranchiseTransaction_Matrix_tbl] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_FranchiseTransaction_Matrix_tbl] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_FranchiseTransaction_Matrix_tbl] TO [DYNGRP]
GO
