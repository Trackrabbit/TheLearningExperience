SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[glBBFTranslationOpenClear]  @O_iErrorState           int             = NULL  output  as   select  @O_iErrorState   = 0  delete from GL20001  select @O_iErrorState = @@error  return   
GO
GRANT EXECUTE ON  [dbo].[glBBFTranslationOpenClear] TO [DYNGRP]
GO
