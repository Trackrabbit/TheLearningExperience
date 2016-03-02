CREATE TABLE [dbo].[NCIC5004]
(
[CMPANYID] [smallint] NOT NULL,
[Xfr_Record_Number] [numeric] (19, 5) NOT NULL,
[NC_Src_Account_Index] [int] NOT NULL,
[NC_Dest_IC_Account_Index] [int] NOT NULL,
[NC_Source_Company_ID] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Xfr_Record_Number] [numeric] (19, 5) NOT NULL,
[NC_Currency_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Checkbook_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Account_Index] [int] NOT NULL,
[NC_Distribution_Referenc] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FUNCTAMT] [numeric] (19, 5) NOT NULL,
[ORIGAMT] [numeric] (19, 5) NOT NULL,
[CMXFTDATE] [datetime] NOT NULL,
[NC_FunctionalOriginating] [smallint] NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[NC_Prevent_CMPANYID_Update_NCIC5004] ON [dbo].[NCIC5004] FOR UPDATE AS  BEGIN 	      DECLARE @Count int      SET @Count = @@ROWCOUNT;      IF @Count >= (SELECT SUM(row_count) FROM sys.dm_db_partition_stats           		WHERE OBJECT_ID = OBJECT_ID('NCIC5004' ) AND index_id = 1) and @Count > 1      BEGIN          RAISERROR('Nolan Business Solutions. Mass update prevented on NCIC5004 table for CMPANYID field.',16,1)           ROLLBACK TRANSACTION          RETURN;      END 	 END  
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create     trigger [dbo].[ncAADeleteNonICP] on [dbo].[NCIC5004] for insert as  	/* Trigger on NCIC5004 : ncAADeleteNonICP 	To delete the non icp transactions 	vilasw@nolancomputers.com  date: 04-December-2007	Initial	*/ begin 	set nocount on 	declare @Xfr_Record_Number	char(21), 		@NC_Src_Account_Index	int 	 	select @Xfr_Record_Number = Xfr_Record_Number,@NC_Src_Account_Index = NC_Src_Account_Index 		 from NCIC5004 where Xfr_Record_Number = @Xfr_Record_Number 	if @NC_Src_Account_Index = 0 	begin 		delete from NCIC5004 where Xfr_Record_Number = @Xfr_Record_Number 	end 	 	set nocount off	 end  
GO
ALTER TABLE [dbo].[NCIC5004] ADD CONSTRAINT [CK__NCIC5004__CMXFTD__0461D2AF] CHECK ((datepart(hour,[CMXFTDATE])=(0) AND datepart(minute,[CMXFTDATE])=(0) AND datepart(second,[CMXFTDATE])=(0) AND datepart(millisecond,[CMXFTDATE])=(0)))
GO
ALTER TABLE [dbo].[NCIC5004] ADD CONSTRAINT [PKNCIC5004] PRIMARY KEY CLUSTERED  ([Xfr_Record_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5004].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC5004].[Xfr_Record_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5004].[NC_Src_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5004].[NC_Dest_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5004].[NC_Source_Company_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5004].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5004].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5004].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5004].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC5004].[NC_Xfr_Record_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5004].[NC_Currency_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5004].[NC_Checkbook_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5004].[NC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5004].[NC_Distribution_Referenc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC5004].[FUNCTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC5004].[ORIGAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC5004].[CMXFTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5004].[NC_FunctionalOriginating]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5004].[VOIDED]'
GO
GRANT REFERENCES ON  [dbo].[NCIC5004] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5004] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC5004] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC5004] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC5004] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5004] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC5004] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC5004] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC5004] TO [public]
GO
