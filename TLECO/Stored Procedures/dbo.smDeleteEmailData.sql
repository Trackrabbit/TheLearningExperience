SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create proc [dbo].[smDeleteEmailData] (   @DictID integer = NULL,  @Module integer = NULL,  @DocType integer = NULL,  @DocNumber varchar(255) = NULL,  @iErrorState int=NULL output)  AS  begin set nocount on  if( @DictID is NULL or  @Module is NULL or  @DocType is NULL or  @DocNumber is NULL  ) begin  select          @iErrorState = 21022  return end   SELECT @iErrorState = 0  BEGIN   DELETE FROM SY04910  WHERE MODULE1 = @Module AND DOCTYPE = @DocType   AND DOCNUMBR = @DocNumber AND DICTRYID = @DictID  END if  @@error <> 0   begin  SELECT @iErrorState = @@error   return(@@error)  end   BEGIN   DELETE FROM SY04915 WHERE DICTRYID = @DictID AND MODULE1 = @Module AND DOCTYPE = @DocType AND DOCNUMBR = @DocNumber  END if  @@error <> 0   begin  SELECT @iErrorState = @@error   return(@@error)  end  end     
GO
GRANT EXECUTE ON  [dbo].[smDeleteEmailData] TO [DYNGRP]
GO
