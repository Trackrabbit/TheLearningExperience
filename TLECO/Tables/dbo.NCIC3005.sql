CREATE TABLE [dbo].[NCIC3005]
(
[NC_Source_Company_ID] [smallint] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[NC_Src_IC_Account_Index] [int] NOT NULL,
[NC_Dest_IC_Account_Index] [int] NOT NULL,
[NC_Copy_MDA_CB] [tinyint] NOT NULL,
[NC_Reverse_MDA_CB] [tinyint] NOT NULL,
[Remote_Company_ID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Remote_Destination_Accou] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Remote_Destination_IC_Ac] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[NC_Prevent_CMPANYID_Update_NCIC3005] ON [dbo].[NCIC3005] FOR UPDATE AS  BEGIN 	      DECLARE @Count int      SET @Count = @@ROWCOUNT;      IF @Count >= (SELECT SUM(row_count) FROM sys.dm_db_partition_stats           		WHERE OBJECT_ID = OBJECT_ID('NCIC3005' ) AND index_id = 1) and @Count > 1      BEGIN          RAISERROR('Nolan Business Solutions. Mass update prevented on NCIC3005 table for CMPANYID field.',16,1)           ROLLBACK TRANSACTION          RETURN;      END 	 END  
GO
ALTER TABLE [dbo].[NCIC3005] ADD CONSTRAINT [PKNCIC3005] PRIMARY KEY CLUSTERED  ([NC_Source_Company_ID], [NC_Src_IC_Account_Index]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3005].[NC_Source_Company_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3005].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3005].[NC_Src_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3005].[NC_Dest_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3005].[NC_Copy_MDA_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC3005].[NC_Reverse_MDA_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3005].[Remote_Company_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3005].[Remote_Destination_Accou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC3005].[Remote_Destination_IC_Ac]'
GO
GRANT REFERENCES ON  [dbo].[NCIC3005] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC3005] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC3005] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC3005] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC3005] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC3005] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC3005] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC3005] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC3005] TO [public]
GO
