CREATE TABLE [dbo].[B4690700]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMail] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Occupancy_Type] [smallint] NOT NULL,
[BSSI_Total_Sq_Ft] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Sq_Meters] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Leasable_Sq_F] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Leasable_Sq_M] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Floors] [int] NOT NULL,
[BSSI_Total_Units] [int] NOT NULL,
[BSSI_Total_Garages] [int] NOT NULL,
[BSSI_Total_Hectures] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4690700] ADD CONSTRAINT [PKB4690700] PRIMARY KEY NONCLUSTERED  ([BSSI_PortfolioID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690700].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[EMail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690700].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690700].[BSSI_Occupancy_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690700].[BSSI_Total_Sq_Ft]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690700].[BSSI_Total_Sq_Meters]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690700].[BSSI_Total_Leasable_Sq_F]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690700].[BSSI_Total_Leasable_Sq_M]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690700].[BSSI_Total_Floors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690700].[BSSI_Total_Units]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690700].[BSSI_Total_Garages]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690700].[BSSI_Total_Hectures]'
GO
GRANT SELECT ON  [dbo].[B4690700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4690700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4690700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4690700] TO [DYNGRP]
GO
