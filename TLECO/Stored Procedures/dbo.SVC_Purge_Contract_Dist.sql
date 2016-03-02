SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Purge_Contract_Dist]  @CONSTS smallint,  @CONTNBR char(11)  as   delete from SVC30609  where @CONSTS=CONSTS and @CONTNBR=CONTNBR   delete from SVC00631  where @CONSTS=CONSTS and @CONTNBR=CONTNBR  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Purge_Contract_Dist] TO [DYNGRP]
GO
