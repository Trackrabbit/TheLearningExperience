CREATE TABLE [dbo].[CustomerFreeExtender_Insert3]
(
[Extender_Record_ID] [bigint] NULL,
[CustKey] [int] NOT NULL,
[SchoolType] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LeaseAdminFee] [numeric] (15, 3) NULL,
[SoftwareFee] [numeric] (15, 3) NULL,
[JBJFee] [numeric] (15, 3) NULL,
[CenterCapacity] [int] NULL,
[IsAdvFee] [smallint] NULL,
[AdvFeePct] [numeric] (15, 3) NULL,
[Pctg] [numeric] (15, 3) NULL,
[OpenDate] [datetime] NULL,
[AddAdvFeeAmt] [numeric] (15, 3) NULL,
[AdvFeeCap] [numeric] (15, 3) NULL,
[ArchitectCapacity] [int] NULL,
[RecogDate] [datetime] NULL,
[COMMENT2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[CustomerFreeExtender_Insert3] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CustomerFreeExtender_Insert3] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CustomerFreeExtender_Insert3] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CustomerFreeExtender_Insert3] TO [DYNGRP]
GO
