CREATE TABLE [dbo].[CAM30100]
(
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[CAM_ControlAccountIndex] [int] NOT NULL,
[CAM_Account_Num_String] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAM_ControlAcctDescr] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[ACTNUMST] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[CAM_Amount_Total] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CAM30100] ADD CONSTRAINT [CK__CAM30100__TIME1__033D368C] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[CAM30100] ADD CONSTRAINT [CK__CAM30100__DATE1__02491253] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[CAM30100] ADD CONSTRAINT [PKCAM30100] PRIMARY KEY NONCLUSTERED  ([DATE1], [TIME1], [VCHRNMBR], [ACTINDX], [APTVCHNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4CAM30100] ON [dbo].[CAM30100] ([DATE1], [TIME1], [ACTINDX], [VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CAM30100] ON [dbo].[CAM30100] ([DATE1], [TIME1], [CAM_ControlAccountIndex], [ACTINDX], [VENDORID], [VCHRNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6CAM30100] ON [dbo].[CAM30100] ([DATE1], [TIME1], [CAM_ControlAccountIndex], [ACTNUMST], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7CAM30100] ON [dbo].[CAM30100] ([DATE1], [TIME1], [CAM_ControlAccountIndex], [CAM_Amount_Total], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5CAM30100] ON [dbo].[CAM30100] ([DATE1], [TIME1], [CAM_ControlAccountIndex], [VCHRNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CAM30100] ON [dbo].[CAM30100] ([DATE1], [TIME1], [CAM_ControlAccountIndex], [VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CAM30100].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CAM30100].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM30100].[CAM_ControlAccountIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM30100].[CAM_Account_Num_String]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM30100].[CAM_ControlAcctDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM30100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM30100].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM30100].[ACTNUMST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM30100].[ACTDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM30100].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM30100].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CAM30100].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CAM30100].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CAM30100].[CAM_Amount_Total]'
GO
GRANT SELECT ON  [dbo].[CAM30100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CAM30100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CAM30100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CAM30100] TO [DYNGRP]
GO
