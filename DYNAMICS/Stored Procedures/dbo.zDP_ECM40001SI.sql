SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ECM40001SI] (@CompanyID int, @CommitmentActivated int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ECM40001 (CompanyID, CommitmentActivated) VALUES ( @CompanyID, @CommitmentActivated) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM40001SI] TO [DYNGRP]
GO
