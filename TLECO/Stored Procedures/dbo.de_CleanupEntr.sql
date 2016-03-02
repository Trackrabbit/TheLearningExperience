SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE proc [dbo].[de_CleanupEntr] @jrnl int
as
delete GL10001 where JRNENTRY=@jrnl
delete GL10000 where JRNENTRY=@jrnl
delete NCIC3006 where JRNENTRY=@jrnl

GO
GRANT EXECUTE ON  [dbo].[de_CleanupEntr] TO [DYNGRP]
GO
