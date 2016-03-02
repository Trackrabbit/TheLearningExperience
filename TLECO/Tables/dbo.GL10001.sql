CREATE TABLE [dbo].[GL10001]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLLINMSG] [binary] (4) NOT NULL,
[GLLINMS2] [binary] (4) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[GLLINVAL] [binary] (4) NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[FXDORVAR] [smallint] NOT NULL,
[BALFRCLC] [smallint] NOT NULL,
[PSTNGTYP] [smallint] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[ORCTRNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORMSTRNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORTRXTYP] [smallint] NOT NULL,
[OrigSeqNum] [int] NOT NULL,
[ORTRXDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DTA_GL_Status] [smallint] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[LNESTAT] [smallint] NOT NULL,
[CorrespondingUnit] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__GL10001__DEX_ROW__683C5DC5] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[FA_Update_Trx_Lines_With_FA_Info] ON [dbo].[GL10001]  FOR INSERT, UPDATE AS declare @financial_index int, @assetindex int, @trxaccttype smallint, @assetid char(15), @assetidsuf int,  @assetid_and_suffix char(21), @JRNENTRY integer, @SQNCLINE numeric(19,5), @reference char(31),  @doc_number char(16), @asset_description char(41)    
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create    trigger [dbo].[ncUpdateDistDescription] on [dbo].[GL10001] for insert as 	 begin 	set nocount on 	declare @BACHNUMB			char(15), 			@JRNENTRY			int, 			@SQNCLINE			numeric(19,5), 			@INTERID			char(5),	 			@SRCINTERID			char(5),	 			@reference			char(31), 			@SourceJE			int, 			@SQLStr				nvarchar(1000), 			@Param				nvarchar(1000), 			@Status				smallint, 			@NC_SpareInts_3		smallint, 			@NC_SpareInts_9		smallint,		 			@SOURCDOC			varchar(5), 			@reference1			char(31) 	select @BACHNUMB = BACHNUMB, @JRNENTRY = JRNENTRY,@SQNCLINE = SQNCLINE from inserted	 	select @SOURCDOC = SOURCDOC from GL10000 where JRNENTRY = @JRNENTRY 	if substring(@SOURCDOC,1,2) not in ('GJ','PM') return 		  	if substring(@BACHNUMB,1,12) = 'ICP_DEST_TRN' or substring(@BACHNUMB,1,8) = 'IC_BATCH' 	begin 		select 	@SRCINTERID = dbo.ncICDecodeRef(REFRENCE,0), 			@SourceJE = convert(int,(dbo.ncICDecodeRef(REFRENCE,1))) 			from GL10000  			where JRNENTRY = @JRNENTRY and 			ORTRXSRC like 'IC%' 			order by DEX_ROW_ID desc 	 		 		if @SRCINTERID is null return 		select @SQLStr =  'select @NC_SpareInts_3 = NC_SpareInts_3 , @NC_SpareInts_9 = NC_SpareInts_9 from ' +@SRCINTERID+'..NCIC3000' 		select @Param  =  	N'@NC_SpareInts_3		smallint output , @NC_SpareInts_9 smallint output' 		exec @Status = sp_executesql @SQLStr,@Param,  			@NC_SpareInts_3 = @NC_SpareInts_3 output, 			@NC_SpareInts_9 = @NC_SpareInts_9 output			 		if @NC_SpareInts_3 = 1 and substring(@SOURCDOC,1,2) = 'GJ' 		begin 			select @SQLStr =   			N'select top 1 @reference =  REFRENCE  from '+ 				@SRCINTERID+'..GL20000  				where JRNENTRY = @JRNENTRY ' 			select @Param  =   				N'@JRNENTRY 			int , 				@reference			char(31) output' 			exec @Status = sp_executesql @SQLStr,@Param,  				@JRNENTRY 	= @SourceJE , 				@reference	= @reference output		 			 			select @SQLStr =   			N'select top 1 @reference1 =  REFRENCE  from '+ 				@SRCINTERID+'..NCIC1010  				where JRNENTRY = @JRNENTRY ' 			select @Param  =   				N'@JRNENTRY 			int , 				@reference1			char(31) output' 				 			exec @Status = sp_executesql @SQLStr,@Param,  				@JRNENTRY 	= @SourceJE , 				@reference1	= @reference1 output		 				 			if @reference1 is null set @reference1 = ''  			if @reference1 <> '' set @reference = @reference1		 			  			update GL10001 set DSCRIPTN = isnull(@reference,@SQLStr) 				where JRNENTRY = @JRNENTRY and SQNCLINE = @SQNCLINE 			 			insert into NCIC1010 (JRNENTRY,SQNCLINE,REFRENCE) values(@JRNENTRY,@SQNCLINE,@reference) 				 		end	   	     		if @NC_SpareInts_9 = 1 and substring(@SOURCDOC,1,2) = 'PM' 		begin 					   			select @SQLStr =   			N'select top 1 @reference =  REFRENCE  from '+ 				@SRCINTERID+'..GL20000  				where JRNENTRY = @JRNENTRY ' 			select @Param  =   				N'@JRNENTRY 			int , 				@reference			char(31) output'			 			  			exec @Status = sp_executesql @SQLStr,@Param,  				@JRNENTRY 	= @SourceJE , 				@reference	= @reference output		 				 			select @SQLStr =   			N'select top 1 @reference1 =  REFRENCE  from '+ 				@SRCINTERID+'..NCIC1010  				where JRNENTRY = @JRNENTRY ' 			select @Param  =   				N'@JRNENTRY 			int , 				@reference1			char(31) output' 				 			exec @Status = sp_executesql @SQLStr,@Param,  				@JRNENTRY 	= @SourceJE , 				@reference1	= @reference1 output		 				 			if @reference1 is null set @reference1 = ''  			if @reference1 <> '' set @reference = @reference1		 			  			update GL10001 set DSCRIPTN = isnull(@reference,@SQLStr) 				where JRNENTRY = @JRNENTRY and SQNCLINE = @SQNCLINE 			 			insert into NCIC1010 (JRNENTRY,SQNCLINE,REFRENCE) values(@JRNENTRY,@SQNCLINE,@reference) 			 		end	   	end 	set nocount off end /*End_Procs ncUpdateDistDescription */	  
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_GL10001U] ON [dbo].[GL10001] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.GL10001 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.GL10001, inserted WHERE GL10001.JRNENTRY = inserted.JRNENTRY AND GL10001.SQNCLINE = inserted.SQNCLINE END set nocount off    
GO
ALTER TABLE [dbo].[GL10001] ADD CONSTRAINT [CK__GL10001__TIME1__6748398C] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[GL10001] ADD CONSTRAINT [CK__GL10001__EXCHDAT__66541553] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[GL10001] ADD CONSTRAINT [PKGL10001] PRIMARY KEY NONCLUSTERED  ([JRNENTRY], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL10001] ON [dbo].[GL10001] ([ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3GL10001] ON [dbo].[GL10001] ([JRNENTRY], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4GL10001] ON [dbo].[GL10001] ([JRNENTRY], [DEX_ROW_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL10001] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10001].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10001].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10001].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10001].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[GLLINMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[GLLINMS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[GLLINVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[FXDORVAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[BALFRCLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[PSTNGTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10001].[ORCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10001].[ORDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10001].[ORMSTRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10001].[ORMSTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[ORTRXTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[OrigSeqNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10001].[ORTRXDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[DTA_GL_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10001].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10001].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10001].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10001].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10001].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10001].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10001].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10001].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10001].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10001].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10001].[LNESTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10001].[CorrespondingUnit]'
GO
GRANT SELECT ON  [dbo].[GL10001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL10001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL10001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL10001] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[GL10001] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[GL10001] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[GL10001] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[GL10001] TO [RAPIDGRP]
GO
