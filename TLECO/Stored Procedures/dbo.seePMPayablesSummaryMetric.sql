SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seePMPayablesSummaryMetric]  @DataType int   as  declare @DocType int,  @GraphTypeString char(20), @type1 varchar(50), @type2 varchar(50), @type3 varchar(50), @type4 varchar(50), @type5 varchar(50), @type6 varchar(50), @type7 varchar(50)  set @type1 = (select rtrim(DOCTYNAM) from PM40102 where DOCTYPE = 1) set @type2 = (select rtrim(DOCTYNAM) from PM40102 where DOCTYPE = 2) set @type3 = (select rtrim(DOCTYNAM) from PM40102 where DOCTYPE = 3) set @type4 = (select rtrim(DOCTYNAM) from PM40102 where DOCTYPE = 4) set @type5 = (select rtrim(DOCTYNAM) from PM40102 where DOCTYPE = 5) set @type6 = (select rtrim(DOCTYNAM) from PM40102 where DOCTYPE = 6) set @type7 = (select rtrim(DOCTYNAM) from PM40102 where DOCTYPE = 7)  create table #PayablesSummary( DocAmount numeric(19,5),  DocType char(15),  GraphTypeString char(20))  if @DataType = 2 begin  select @GraphTypeString = 'Transaction Amount'   insert into #PayablesSummary   select sum(DOCAMNT),   case DOCTYPE  when 1 then @type1  when 2 then @type2  when 3 then @type3  when 4 then @type4  when 5 then @type5  when 6 then @type6  when 7 then @type7  end, @GraphTypeString  from PM20000 with (NOLOCK)  where VOIDED = 0  group by DOCTYPE end  else if @DataType = 1  begin  select @GraphTypeString = 'Count'   insert into #PayablesSummary   select count(DOCAMNT),   case DOCTYPE  when 1 then @type1  when 2 then @type2  when 3 then @type3  when 4 then @type4  when 5 then @type5  when 6 then @type6  when 7 then @type7  end, @GraphTypeString  from PM20000 with (NOLOCK)  where VOIDED = 0  group by DOCTYPE end  select @DocType=1 while @DocType <=7 begin  insert into #PayablesSummary values(0,   case @DocType  when 1 then @type1  when 2 then @type2  when 3 then @type3  when 4 then @type4  when 5 then @type5  when 6 then @type6  when 7 then @type7  end, @GraphTypeString)   select @DocType = @DocType + 1 end  select * from #PayablesSummary with (NOLOCK) drop table #PayablesSummary  set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesSummaryMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesSummaryMetric] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesSummaryMetric] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesSummaryMetric] TO [rpt_executive]
GO
