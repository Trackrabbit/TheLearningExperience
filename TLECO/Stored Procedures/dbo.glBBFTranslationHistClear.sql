SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[glBBFTranslationHistClear]  @O_iErrorState           int             = NULL  output  as   select  @O_iErrorState   = 0  delete from GL30001  select @O_iErrorState = @@error  return   
GO
GRANT EXECUTE ON  [dbo].[glBBFTranslationHistClear] TO [DYNGRP]
GO
