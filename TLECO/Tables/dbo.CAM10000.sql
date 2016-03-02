CREATE TABLE [dbo].[CAM10000]
(
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAM_Amount_Total] [numeric] (19, 5) NOT NULL,
[CAM_Amount_Owing] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CAM10000] ADD CONSTRAINT [CK__CAM10000__TIME1__6E4219A6] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[CAM10000] ADD CONSTRAINT [CK__CAM10000__DATE1__6D4DF56D] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[CAM10000] ADD CONSTRAINT [PKCAM10000] PRIMARY KEY NONCLUSTERED  ([DATE1], [TIME1], [VCHRNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CAM10000] ON [dbo].[CAM10000] ([DATE1], [TIME1], [VENDORID], [VCHRNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CAM10000].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CAM10000].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10000].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10000].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM10000].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM10000].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CAM10000].[CAM_Amount_Total]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CAM10000].[CAM_Amount_Owing]'
GO
GRANT SELECT ON  [dbo].[CAM10000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CAM10000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CAM10000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CAM10000] TO [DYNGRP]
GO
