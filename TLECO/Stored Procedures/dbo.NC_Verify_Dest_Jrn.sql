SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[NC_Verify_Dest_Jrn] 	@in_jrnentry int, 	@out_err int output	 as  begin 	declare @l_jrn as int, @l_cmpID as integer, @l_InterId as varchar(10),  		@l_query as varchar(max), /* @l_destJrn as integer, */ @cnt as integer 		 	create table #tt (INTERID varchar(10), JRNENTRY integer)	 	 	declare CurDest cursor for 	 		select distinct JRNENTRY,CMPANYID from 		( 		select gl.JRNENTRY, nc.CMPANYID from GL20000 gl 		inner join NCIC0003 nc on gl.ACTINDX = nc.NC_Src_Account_Index 		union all  		select gl.JRNENTRY, nc.CMPANYID from GL20000 gl 		inner join NCIC3005 nc on gl.ACTINDX = nc.NC_Src_IC_Account_Index 		) gg 		where gg.JRNENTRY = @in_jrnentry 	open CurDest 	fetch next from CurDest into @l_jrn, @l_cmpID  	while (@@FETCH_STATUS <> -1) 	begin 		insert into #tt	 			select INTERID,0 FROM DYNAMICS..sy01500 where CMPANYID = @l_cmpID 	 		select top 1 @l_InterId = INTERID FROM DYNAMICS..sy01500 where CMPANYID = @l_cmpID 					 		set @l_query = 'update #tt set JRNENTRY = DEST.JRNENTRY FROM ' + @l_InterId +  			'..GL20000 DEST where REFRENCE = ''IC: ' + ltrim(rtrim(DB_NAME())) +  			', Journal: ' + cast(@in_jrnentry as varchar(10)) + ''' and INTERID = ' +''''+ @l_InterId+'''' 		 		exec (@l_query) 		fetch next from CurDest into @l_jrn, @l_cmpID 	end 	 	deallocate CurDest 	select @cnt = COUNT(*) from #tt where JRNENTRY = 0 	 	if @cnt = 0 set @out_err = 0 else set @out_err = 1 end  
GO
GRANT EXECUTE ON  [dbo].[NC_Verify_Dest_Jrn] TO [DYNGRP]
GO
