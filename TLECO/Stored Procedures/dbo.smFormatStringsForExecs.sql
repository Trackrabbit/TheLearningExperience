SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smFormatStringsForExecs]  @I_vInputString varchar(125) = NULL,  @O_cOutputString char(255) = NULL output,  @O_iErrorState                  int             = NULL output as  declare  @tLoopControl           tinyint,  @iStatus int,  @iError                 int,  @stringlength int,  @OutStringLength int,  @iCount int,  @cStringCharacter char(1)  select  @O_iErrorState = 0,  @O_cOutputString = '''',  @iCount = 1,  @OutStringLength = 1,  @stringlength = len(@I_vInputString)  while @tLoopControl is NULL begin  select @tLoopControl = 1   if @I_vInputString is NULL  begin  select @O_iErrorState = 20966  break  end    while @iCount <= @stringlength  begin  select @cStringCharacter = substring(@I_vInputString,@iCount,1)   if @cStringCharacter = ''''  begin  select @O_cOutputString = substring(@O_cOutputString,1,@OutStringLength) + REPLICATE('''',2)  select @OutStringLength = @OutStringLength + 2  end  else  begin  select @O_cOutputString = substring(@O_cOutputString,1,@OutStringLength) + REPLICATE(@cStringCharacter,1)  select @OutStringLength = @OutStringLength + 1  end   select @iCount = @iCount + 1  end   select @O_cOutputString = rtrim(@O_cOutputString) + ''''  end   return    
GO
GRANT EXECUTE ON  [dbo].[smFormatStringsForExecs] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[smFormatStringsForExecs] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[smFormatStringsForExecs] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[smFormatStringsForExecs] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[smFormatStringsForExecs] TO [rpt_executive]
GO
