SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagVerifyJournalAndYear]  @JournalNo int, @Year    int, @Invalid    int output as Begin  if exists(select HSTYEAR from GL30000 where JRNENTRY= @JournalNo and HSTYEAR = @Year)  Begin   select @Invalid=1   return  end  else  if exists(select JRNENTRY from AAG30000 where JRNENTRY=@JournalNo and YEAR1=@Year)   begin  select @Invalid=0   return  end  else  begin  select @Invalid=2   return  end End    
GO
GRANT EXECUTE ON  [dbo].[aagVerifyJournalAndYear] TO [DYNGRP]
GO
