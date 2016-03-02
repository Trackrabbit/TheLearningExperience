SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE     procedure [dbo].[aagGetAccClassID] @I_nAccIndx int = 0, @O_nAccClass int = 0 output  as  select @O_nAccClass = aaAcctClassID from AAG00200 where ACTINDX = @I_nAccIndx     
GO
GRANT EXECUTE ON  [dbo].[aagGetAccClassID] TO [DYNGRP]
GO
