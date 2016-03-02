CREATE TABLE [dbo].[NCIC3015]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[NC_Src_IC_Account_Index] [int] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[NC_Dest_Account_Index] [int] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Dest_IC_Account_Index] [int] NOT NULL,
[Remote_Company_ID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Remote_Destination_Accou] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Remote_Destination_IC_Ac] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Copy_MDA_CB] [tinyint] NOT NULL,
[NC_Reverse_MDA_CB] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC3015] ADD CONSTRAINT [PKNCIC3015] PRIMARY KEY CLUSTERED  ([USERID], [SQNCLINE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3015].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC3015].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3015].[NC_Src_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3015].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3015].[NC_Dest_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3015].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3015].[NC_Dest_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3015].[Remote_Company_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3015].[Remote_Destination_Accou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3015].[Remote_Destination_IC_Ac]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3015].[NC_Copy_MDA_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3015].[NC_Reverse_MDA_CB]'
GO
GRANT REFERENCES ON  [dbo].[NCIC3015] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC3015] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC3015] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC3015] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC3015] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC3015] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC3015] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC3015] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC3015] TO [public]
GO
