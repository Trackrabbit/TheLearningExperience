SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smAccountMasterInsertTrigger] as  exec ('create trigger dbo.glpAccountMasterInsertTrigger on GL00100 for insert as declare @cnt int declare @myproc varchar(8000) declare @act as varchar(1000) declare @numsegs int declare @natseg int DECLARE @SEGLENGTH INT  select @numsegs = (select count(*) from SY00300) select @natseg = (select SGMTNUMB from SY00300 where MNSEGIND = 1) select @cnt = 1  select * into #temp001 from inserted  select @myproc = ''insert into frl_acct_code  (acct_id,  entity_num,  acct_code,  acct_type,  acct_status,  acct_desc,  normal_bal,  acct_group,  nat_seg_code,  rollup_level,  activated_date,  last_used_date,  deactivated_date,  modify_flag  )  SELECT ACTINDX AS acct_id, 1 AS entity_num, ''  select @act ='''' while @cnt <= @numsegs begin  select @SEGLENGTH =LOFSGMNT from SY00300 where SGMTNUMB = @cnt   select @act = @act + '' SUBSTRING(ACTNUMBR_'' + ltrim(STR(@cnt)) + '',1, '' + str(@SEGLENGTH) + '' ) ''   if @cnt < @numsegs  begin  select @act = @act + '' + ''  end  select @cnt = @cnt + 1 end  select @SEGLENGTH =LOFSGMNT from SY00300 where SGMTNUMB = @natseg  select @myproc = @myproc + @act + '' AS acct_code,   ACCTTYPE AS acct_type, ACTIVE AS acct_status,   ACTDESCR AS acct_desc, TPCLBLNC + 1 AS normal_bal,   PSTNGTYP * 3 + 1 AS acct_group,   nat_seg_code = substring(ACTNUMBR_'' + ltrim(str(@natseg)) + '',1,'' + str(@SEGLENGTH) + '')''   select @cnt = 1  while @cnt <= @numsegs begin  if @cnt <> @natseg   begin  select @SEGLENGTH =LOFSGMNT from SY00300 where SGMTNUMB = @cnt   select @myproc = @myproc + '' +  substring(ACTNUMBR_'' + ltrim(str(@cnt)) + '',1,'' + str(@SEGLENGTH) + '')''    end   select @cnt = @cnt + 1 end  select @myproc = @myproc + '' ,   0 AS rollup_level,  CREATDDT AS activated_date,   MODIFDT AS last_used_date, NULL AS deactivated_date,   0 AS modify_flag FROM #temp001 ''  exec (@myproc) ')    
GO
GRANT EXECUTE ON  [dbo].[smAccountMasterInsertTrigger] TO [DYNGRP]
GO
