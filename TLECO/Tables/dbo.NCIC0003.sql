CREATE TABLE [dbo].[NCIC0003]
(
[NC_Source_Company_ID] [smallint] NOT NULL,
[NC_Trigger_Account_Index] [int] NOT NULL,
[NC_Src_Account_Index] [int] NOT NULL,
[NC_Src_IC_Account_Index] [int] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[NC_Dest_Account_Index] [int] NOT NULL,
[NC_Dest_IC_Account_Index] [int] NOT NULL,
[NC_Copy_MDA_CB] [tinyint] NOT NULL,
[NC_Reverse_MDA_CB] [tinyint] NOT NULL,
[Remote_Company_ID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Remote_Destination_Accou] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Remote_Destination_IC_Ac] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRGB255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRNG132] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IntegerValue] [smallint] NOT NULL,
[DATE1] [datetime] NOT NULL,
[CURRVAL] [numeric] (19, 5) NOT NULL,
[DOLRAMNT] [numeric] (19, 5) NOT NULL,
[NC_Intracompany] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[NC_Prevent_CMPANYID_Update_NCIC0003] ON [dbo].[NCIC0003] FOR UPDATE AS  BEGIN 	      DECLARE @Count int      SET @Count = @@ROWCOUNT;      IF @Count >= (SELECT SUM(row_count) FROM sys.dm_db_partition_stats           		WHERE OBJECT_ID = OBJECT_ID('NCIC0003' ) AND index_id = 1) and @Count > 1      BEGIN          RAISERROR('Nolan Business Solutions. Mass update prevented on NCIC0003 table for CMPANYID field.',16,1)           ROLLBACK TRANSACTION          RETURN;      END 	 END  
GO
ALTER TABLE [dbo].[NCIC0003] ADD CONSTRAINT [CK__NCIC0003__DATE1__12AFF206] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[NCIC0003] ADD CONSTRAINT [PKNCIC0003] PRIMARY KEY CLUSTERED  ([NC_Source_Company_ID], [NC_Trigger_Account_Index]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC0003].[NC_Source_Company_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC0003].[NC_Trigger_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC0003].[NC_Src_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC0003].[NC_Src_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC0003].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC0003].[NC_Dest_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC0003].[NC_Dest_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC0003].[NC_Copy_MDA_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC0003].[NC_Reverse_MDA_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC0003].[Remote_Company_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC0003].[Remote_Destination_Accou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC0003].[Remote_Destination_IC_Ac]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC0003].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC0003].[STRGB255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC0003].[STRNG132]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC0003].[IntegerValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC0003].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC0003].[CURRVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC0003].[DOLRAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC0003].[NC_Intracompany]'
GO
GRANT REFERENCES ON  [dbo].[NCIC0003] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC0003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC0003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC0003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC0003] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC0003] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC0003] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC0003] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC0003] TO [public]
GO
