SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00960SI] (@CUSTNMBR char(15), @ADRSCODE char(15), @FRSTNAME char(15), @LASTNAME char(21), @PHONNAME char(21), @FAXNUMBR char(21), @ANI_Number char(13), @EMail char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00960 (CUSTNMBR, ADRSCODE, FRSTNAME, LASTNAME, PHONNAME, FAXNUMBR, ANI_Number, EMail) VALUES ( @CUSTNMBR, @ADRSCODE, @FRSTNAME, @LASTNAME, @PHONNAME, @FAXNUMBR, @ANI_Number, @EMail) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00960SI] TO [DYNGRP]
GO
