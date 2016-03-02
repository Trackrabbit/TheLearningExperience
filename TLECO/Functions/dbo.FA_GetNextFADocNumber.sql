SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[FA_GetNextFADocNumber] (@IN_Source_Doc char(11))  RETURNS char(16) AS BEGIN   declare @prefix char(5), @last_doc_number char(16), @fa_doc_number char(16)  declare @last_value integer, @new_value bigint  if @IN_Source_Doc in ('FAADD')  begin  select @last_doc_number=MAX(FA_Doc_Number) from FA00902 where SOURCDOC='FAADD'  select @prefix = 'FAADD'  end  if @IN_Source_Doc in ('FACHG', 'FACHG-R', 'FAMCH', 'FAMCH-R')  begin  select @last_doc_number=MAX(FA_Doc_Number) from FA00902 where SOURCDOC in ('FACHG', 'FACHG-R', 'FAMCH', 'FAMCH-R')  select @prefix = 'FACHG'  end  if @IN_Source_Doc in ('FADEP', 'FADEP-O', 'FADEP-R')  begin  select @last_doc_number=MAX(FA_Doc_Number) from FA00902 where SOURCDOC in ('FADEP', 'FADEP-O', 'FADEP-R')  select @prefix = 'FADEP'  end  if @IN_Source_Doc in ('FARET', 'FAMRT', 'FARET-P', 'FARET-PU', 'FARET-U')  begin  select @last_doc_number=MAX(FA_Doc_Number) from FA00902 where SOURCDOC in ('FARET', 'FAMRT', 'FARET-P', 'FARET-PU', 'FARET-U')  select @prefix = 'FARET'  end  if @IN_Source_Doc in ('FAXFR', 'FAMXF', 'FAMXF-C', 'FAXFR-C', 'FAXFR-P')  begin  select @last_doc_number=MAX(FA_Doc_Number) from FA00902 where SOURCDOC in ('FAXFR', 'FAMXF', 'FAMXF-C', 'FAXFR-C', 'FAXFR-P')  select @prefix = 'FAXFR'  end  if @IN_Source_Doc in ('FASUM')  begin  select @last_doc_number=MAX(FA_Doc_Number) from FA00902 where SOURCDOC='FASUM'  select @prefix = 'FASUM'  end  select @last_doc_number = isnull(@last_doc_number,'')  if @last_doc_number <> ''   begin  select @last_value= (select cast(substring(@last_doc_number,6,11) as integer))  select @new_value=@last_value+100000000001  select @fa_doc_number = rtrim(@prefix)+ltrim(substring(str(@new_value,12),2,11))  end  else   begin  select @fa_doc_number =   case   when @IN_Source_Doc = ('FAADD')   then 'FAADD00000000001'  when @IN_Source_Doc in ('FACHG', 'FACHG-R', 'FAMCH', 'FAMCH-R')   then 'FACHG00000000001'  when @IN_Source_Doc in ('FADEP', 'FADEP-O', 'FADEP-R')  then 'FADEP00000000001'  when @IN_Source_Doc in ('FARET', 'FAMRT', 'FARET-P', 'FARET-PU', 'FARET-U')  then 'FARET00000000001'  when @IN_Source_Doc in ('FAXFR', 'FAMXF', 'FAMXF-C', 'FAXFR-C', 'FAXFR-P')  then 'FAXFR00000000001'  when @IN_Source_Doc = ('FASUM')   then 'FASUM00000000001'  else ''  end  end  RETURN(@fa_doc_number)  END   
GO
GRANT EXECUTE ON  [dbo].[FA_GetNextFADocNumber] TO [DYNGRP]
GO