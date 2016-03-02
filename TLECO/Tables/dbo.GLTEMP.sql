CREATE TABLE [dbo].[GLTEMP]
(
[BSSI_ground_lease_number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[newlease] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[GLTEMP] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GLTEMP] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GLTEMP] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GLTEMP] TO [DYNGRP]
GO
