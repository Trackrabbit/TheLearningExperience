CREATE TABLE [dbo].[NCIC1500]
(
[NCTMPLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCTPTrigASTR] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCTPSACCS] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCTPSICASTR] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[NCTPDASTR] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCTPDICASTR] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCTEMPOP] [smallint] NOT NULL,
[NC_Reverse_MDA_CB] [tinyint] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Copy_MDA_CB] [tinyint] NOT NULL,
[NC_Intracompany] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[NC_Prevent_CMPANYID_Update_NCIC1500] ON [dbo].[NCIC1500] FOR UPDATE AS  BEGIN 	      DECLARE @Count int      SET @Count = @@ROWCOUNT;      IF @Count >= (SELECT SUM(row_count) FROM sys.dm_db_partition_stats           		WHERE OBJECT_ID = OBJECT_ID('NCIC1500' ) AND index_id = 1) and @Count > 1      BEGIN          RAISERROR('Nolan Business Solutions. Mass update prevented on NCIC1500 table for CMPANYID field.',16,1)           ROLLBACK TRANSACTION          RETURN;      END 	 END  
GO
ALTER TABLE [dbo].[NCIC1500] ADD CONSTRAINT [PKNCIC1500] PRIMARY KEY CLUSTERED  ([NCTMPLID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1500].[NCTMPLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1500].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1500].[NCTPTrigASTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1500].[NCTPSACCS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1500].[NCTPSICASTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1500].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1500].[NCTPDASTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1500].[NCTPDICASTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1500].[NCTEMPOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1500].[NC_Reverse_MDA_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1500].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1500].[NC_Copy_MDA_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1500].[NC_Intracompany]'
GO
GRANT REFERENCES ON  [dbo].[NCIC1500] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC1500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC1500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC1500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC1500] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC1500] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC1500] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC1500] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC1500] TO [public]
GO
