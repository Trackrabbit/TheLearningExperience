CREATE TABLE [dbo].[DE_DimState]
(
[StateID_pk] [int] NOT NULL,
[StateID_sk] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StateName] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Region] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Capital] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LargestCity] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Population_2013] [int] NULL
) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DE_DimState] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_DimState] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_DimState] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_DimState] TO [DYNGRP]
GO
