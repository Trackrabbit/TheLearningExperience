CREATE TABLE [dbo].[NCIC5001]
(
[NCTMPLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Trigger_Account_Index] [int] NOT NULL,
[NCTrigAcctNumStr] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Src_Account_Index] [int] NOT NULL,
[NCSrcANumStr] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Src_IC_Account_Index] [int] NOT NULL,
[NCSrcICANumStr] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Dest_Account_Index] [int] NOT NULL,
[NCDestAcctNumStr] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Dest_IC_Account_Index] [int] NOT NULL,
[NCDestICAcctNumStrr] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Dest_IntercompanyID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCICCompName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCMESGESTR_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCMESGESTR_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCMESGESTR_3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCMESGESTR_4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NCMESGESTR_5] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC5001] ADD CONSTRAINT [PKNCIC5001] PRIMARY KEY CLUSTERED  ([NC_Trigger_Account_Index], [NCTrigAcctNumStr]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCTMPLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5001].[NC_Trigger_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCTrigAcctNumStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5001].[NC_Src_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCSrcANumStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5001].[NC_Src_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCSrcICANumStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5001].[NC_Dest_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCDestAcctNumStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5001].[NC_Dest_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCDestICAcctNumStrr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NC_Dest_IntercompanyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCICCompName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCMESGESTR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCMESGESTR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCMESGESTR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCMESGESTR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5001].[NCMESGESTR_5]'
GO
GRANT REFERENCES ON  [dbo].[NCIC5001] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC5001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC5001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC5001] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5001] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC5001] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC5001] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC5001] TO [public]
GO
