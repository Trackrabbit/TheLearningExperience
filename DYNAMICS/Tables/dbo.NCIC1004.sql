CREATE TABLE [dbo].[NCIC1004]
(
[CMPANYID] [smallint] NOT NULL,
[NC_Source_Company_ID] [smallint] NOT NULL,
[NC_Src_Account_Index] [int] NOT NULL,
[NC_Src_IC_Account_Index] [int] NOT NULL,
[NC_Dest_Account_Index] [int] NOT NULL,
[NC_Dest_IC_Account_Index] [int] NOT NULL,
[NC_Trigger_Account_Index] [int] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLLINMSG] [binary] (4) NOT NULL,
[GLLINMS2] [binary] (4) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[ORCTRNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORTRXTYP] [smallint] NOT NULL,
[OrigSeqNum] [int] NOT NULL,
[OrigDTASeries] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DTA_GL_Status] [smallint] NOT NULL,
[DTAREF] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DTA_Index] [numeric] (19, 5) NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[NC_Src_Batch_Created] [tinyint] NOT NULL,
[NC_Dest_Batch_Created] [smallint] NOT NULL,
[NC_Copy_MDA_CB] [tinyint] NOT NULL,
[NC_Reverse_MDA_CB] [tinyint] NOT NULL,
[MKDTOPST] [tinyint] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[CURRVAL] [numeric] (19, 5) NOT NULL,
[DATE1] [datetime] NOT NULL,
[String1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IntegerValue] [smallint] NOT NULL,
[NC_Source_Currency_Index] [smallint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[Remote_Company_ID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Remote_Destination_Accou] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Remote_Destination_IC_Ac] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MCSTRUCT_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MCSTRUCT_2] [smallint] NOT NULL,
[MCSTRUCT_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MCSTRUCT_4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MCSTRUCT_5] [numeric] (19, 7) NOT NULL,
[MCSTRUCT_6] [datetime] NOT NULL,
[MCSTRUCT_7] [smallint] NOT NULL,
[MCSTRUCT_8] [datetime] NOT NULL,
[MCSTRUCT_9] [smallint] NOT NULL,
[MCSTRUCT_10] [smallint] NOT NULL,
[MCSTRUCT_11] [smallint] NOT NULL,
[MCSTRUCT_12] [datetime] NOT NULL,
[MCSTRUCT_13] [numeric] (19, 7) NOT NULL,
[MCSTRUCT_14] [smallint] NOT NULL,
[ORTRXDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Spare_Int] [smallint] NOT NULL,
[NC_Bank_Currency_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_FunctionalOriginating] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[nc_Update_Series_For_PA] on [dbo].[NCIC1004] for insert  as begin set nocount on declare @CMPANYID smallint,  @JRNENTRY int,  @SQNCLINE numeric(19,5), @SERIES smallint select @CMPANYID = CMPANYID, @JRNENTRY = JRNENTRY, @SQNCLINE = SQNCLINE, @SERIES = SERIES from inserted if @SERIES = 7 begin update NCIC1004 set SERIES = 2 from NCIC1004 (NOLOCK) where CMPANYID = @CMPANYID and JRNENTRY = @JRNENTRY and SQNCLINE = @SQNCLINE  end set nocount off end  
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[ncICCheckSourceDoc] on [dbo].[NCIC1004] for insert  as begin 	set nocount on 	declare @NC_Source_Company_ID		smallint, 		@NC_Trigger_Account_Index	int, 		@SOURCDOC			char(11), 		@INTERID 			char(5), 		@NC_Post_IC_TRX_1		tinyint, 		@SQLStr				nvarchar(4000), 		@Param				nvarchar(4000), 		@Status				smallint, 		@CMPANYID			smallint, 		@JRNENTRY			int, 		@NC_SpareInts_4			int,		 		@NC_SpareStrings_1 char(5), 		@SOURCDOCHIST	varchar(15), 		@XCHGRATE	numeric(19,5), 		@NC_Source_Currency_Index smallint, 		@CURRNIDX	smallint 		 	 	select	@CMPANYID = CMPANYID, 		@JRNENTRY = JRNENTRY, 		@NC_Source_Company_ID = NC_Source_Company_ID ,  		@NC_Trigger_Account_Index = NC_Trigger_Account_Index, 		@SOURCDOC = SOURCDOC ,@XCHGRATE = XCHGRATE, @CURRNIDX = CURRNIDX, @NC_Source_Currency_Index = NC_Source_Currency_Index 		from inserted	 	 	select @INTERID = INTERID from SY01500 where CMPANYID = @NC_Source_Company_ID 	select @SQLStr = 'select @NC_SpareInts_4 = NC_SpareInts_4 ,@NC_SpareStrings_1 = NC_SpareStrings_1 from '+@INTERID+'..NCIC3000 ' 	select @Param = N'@NC_SpareInts_4 int output , @NC_SpareStrings_1 char(5) output' 	exec @Status = sp_executesql @SQLStr,@Param, 				@NC_SpareInts_4  = @NC_SpareInts_4 output, 				@NC_SpareStrings_1 = @NC_SpareStrings_1 output  	select @SQLStr = 'select @SOURCDOCHIST = SOURCDOC  from '+@INTERID+'..GL20000 where  JRNENTRY = @JRNENTRY' 	select @Param = N'@JRNENTRY int  , @SOURCDOCHIST varchar(15) output' 	exec @Status = sp_executesql @SQLStr,@Param, 				@JRNENTRY  = @JRNENTRY , 				@SOURCDOCHIST = @SOURCDOCHIST output 	 	 	if @NC_SpareStrings_1 = 'TRUE'		 	begin		 		if substring(@SOURCDOCHIST,1,3) = 'BBF' 		begin			 			delete from NCIC1004  				where CMPANYID = @CMPANYID and 				JRNENTRY = @JRNENTRY 		 		end 	 	end 	if @NC_Trigger_Account_Index = 0  	begin 		if @NC_SpareInts_4 = 0  		begin 		 			select @SQLStr = N'select @NC_Post_IC_TRX_1 = NC_Post_IC_TRX_1 '+char(13) + 					' from '+@INTERID+'..NCIC1009 ' + char(13) + 					' where NC_Trigger_Account_Index = @NC_Trigger_Account_Index and '+ char(13) + 					' SOURCDOC = @SOURCDOC ' 			select @Param = N'@NC_Post_IC_TRX_1 tinyint output,  					@NC_Trigger_Account_Index int,  					@SOURCDOC  char(11)' 			exec @Status = sp_executesql @SQLStr,@Param, 						@NC_Post_IC_TRX_1 = @NC_Post_IC_TRX_1 output, 						@NC_Trigger_Account_Index = @NC_Trigger_Account_Index, 						@SOURCDOC = @SOURCDOC 			 			if @NC_Post_IC_TRX_1 = 0  			begin 				delete from NCIC1004  					where CMPANYID = @CMPANYID and 					JRNENTRY = @JRNENTRY and 					NC_Source_Company_ID = @NC_Source_Company_ID and 					NC_Trigger_Account_Index = @NC_Trigger_Account_Index and 					SOURCDOC = @SOURCDOC 			end 		end 	end 	if substring(@SOURCDOC,1,2) = 'MC'  	begin 		update NCIC1004 set ORDBTAMT = DEBITAMT, ORCRDAMT = CRDTAMNT, XCHGRATE = 0,  			CURRNIDX = NC_Source_Currency_Index, RATETPID = '', EXGTBLID = '',  			EXCHDATE = '1900-01-01',RTCLCMTD = 0, 	 		DENXRATE = 0,MCTRXSTT = 0, CURRVAL = 0   			where CMPANYID = @CMPANYID and 			JRNENTRY = @JRNENTRY and 			NC_Source_Company_ID = @NC_Source_Company_ID and 			NC_Trigger_Account_Index = @NC_Trigger_Account_Index and 			SOURCDOC = @SOURCDOC  	end 	if @NC_Source_Currency_Index <> @CURRNIDX  	begin 		if @XCHGRATE = 0 		begin 				update NCIC1004 set ORDBTAMT = DEBITAMT, ORCRDAMT = CRDTAMNT, XCHGRATE = 0,  					CURRNIDX = NC_Source_Currency_Index, RATETPID = '', EXGTBLID = '',  					EXCHDATE = '1900-01-01',RTCLCMTD = 0, 	 				DENXRATE = 0,MCTRXSTT = 0, CURRVAL = 0   					where CMPANYID = @CMPANYID and 					JRNENTRY = @JRNENTRY and 					NC_Source_Company_ID = @NC_Source_Company_ID and 					NC_Trigger_Account_Index = @NC_Trigger_Account_Index and 					SOURCDOC = @SOURCDOC 	 		end 	end 	set nocount off end  
GO
ALTER TABLE [dbo].[NCIC1004] ADD CONSTRAINT [CK__NCIC1004__MCSTRU__73A84F46] CHECK ((datepart(day,[MCSTRUCT_8])=(1) AND datepart(month,[MCSTRUCT_8])=(1) AND datepart(year,[MCSTRUCT_8])=(1900)))
GO
ALTER TABLE [dbo].[NCIC1004] ADD CONSTRAINT [CK__NCIC1004__TIME1__6FD7BE62] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[NCIC1004] ADD CONSTRAINT [CK__NCIC1004__DATE1__71C006D4] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[NCIC1004] ADD CONSTRAINT [CK__NCIC1004__EXCHDA__6EE39A29] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[NCIC1004] ADD CONSTRAINT [CK__NCIC1004__MCSTRU__749C737F] CHECK ((datepart(hour,[MCSTRUCT_12])=(0) AND datepart(minute,[MCSTRUCT_12])=(0) AND datepart(second,[MCSTRUCT_12])=(0) AND datepart(millisecond,[MCSTRUCT_12])=(0)))
GO
ALTER TABLE [dbo].[NCIC1004] ADD CONSTRAINT [CK__NCIC1004__MCSTRU__72B42B0D] CHECK ((datepart(hour,[MCSTRUCT_6])=(0) AND datepart(minute,[MCSTRUCT_6])=(0) AND datepart(second,[MCSTRUCT_6])=(0) AND datepart(millisecond,[MCSTRUCT_6])=(0)))
GO
ALTER TABLE [dbo].[NCIC1004] ADD CONSTRAINT [CK__NCIC1004__TRXDAT__70CBE29B] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[NCIC1004] ADD CONSTRAINT [PKNCIC1004] PRIMARY KEY NONCLUSTERED  ([CMPANYID], [JRNENTRY], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2NCIC1004] ON [dbo].[NCIC1004] ([CMPANYID], [JRNENTRY], [TRXDATE], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3NCIC1004] ON [dbo].[NCIC1004] ([Remote_Company_ID], [CMPANYID], [JRNENTRY], [SQNCLINE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Source_Company_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Src_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Src_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Dest_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Dest_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Trigger_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC1004].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC1004].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC1004].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC1004].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC1004].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC1004].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[GLLINMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[GLLINMS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[ORCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[ORDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[ORMSTRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[ORMSTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[ORTRXTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[OrigSeqNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[OrigDTASeries]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[DTA_GL_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[DTAREF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC1004].[DTA_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC1004].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC1004].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC1004].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Src_Batch_Created]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Dest_Batch_Created]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Copy_MDA_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Reverse_MDA_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[MKDTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC1004].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC1004].[CURRVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC1004].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[String1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[IntegerValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Source_Currency_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[Remote_Company_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[Remote_Destination_Accou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[Remote_Destination_IC_Ac]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[MCSTRUCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[MCSTRUCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[MCSTRUCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[MCSTRUCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC1004].[MCSTRUCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC1004].[MCSTRUCT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[MCSTRUCT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC1004].[MCSTRUCT_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[MCSTRUCT_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[MCSTRUCT_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[MCSTRUCT_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC1004].[MCSTRUCT_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC1004].[MCSTRUCT_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[MCSTRUCT_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[ORTRXDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_Spare_Int]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1004].[NC_Bank_Currency_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1004].[NC_FunctionalOriginating]'
GO
GRANT REFERENCES ON  [dbo].[NCIC1004] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC1004] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC1004] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC1004] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC1004] TO [DYNGRP]
GO
