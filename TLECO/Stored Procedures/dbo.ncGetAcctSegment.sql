SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ncGetAcctSegment]  	@I_iACTINDX int,  	@I_iSEGNUM int,  	@O_cACTNUMBR char(10) output  as declare @cCmd varchar(200) set nocount on if exists( select 1 from syscolumns SC join sysobjects SO on SC.id = SO.id 				where SO.name = 'GL00105' and SC.name = ('ACTNUMBR_'+convert(varchar,@I_iSEGNUM)) ) begin 	select @cCmd = 'insert into #ncSegmentValue select ACTNUMBR_'+convert(varchar,@I_iSEGNUM)+' from GL00105 ' 					+ 'where ACTINDX = '+convert(varchar,@I_iACTINDX) 	create table #ncSegmentValue ( ACTNUMBR_N char(10) ) 	exec( @cCmd ) 	select @O_cACTNUMBR = (select top 1 ACTNUMBR_N from #ncSegmentValue) 	drop table #ncSegmentValue end else begin 	select @O_cACTNUMBR = '--ERROR--' end set nocount off  
GO
GRANT EXECUTE ON  [dbo].[ncGetAcctSegment] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[ncGetAcctSegment] TO [public]
GO
