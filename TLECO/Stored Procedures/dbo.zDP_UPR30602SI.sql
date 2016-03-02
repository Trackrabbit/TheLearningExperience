SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30602SI] (@EMPLOYID char(15), @SEQNUMBR int, @EMERGENCYCONTACT char(61), @EMERGENCYRELATION char(11), @HOMEPHONE char(21), @WORKPHONE char(21), @EXTENSION char(5), @ADDRESS1 char(61), @CITY char(35), @STATE char(29), @ZIPCODE char(11), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR30602 (EMPLOYID, SEQNUMBR, EMERGENCYCONTACT, EMERGENCYRELATION, HOMEPHONE, WORKPHONE, EXTENSION, ADDRESS1, CITY, STATE, ZIPCODE) VALUES ( @EMPLOYID, @SEQNUMBR, @EMERGENCYCONTACT, @EMERGENCYRELATION, @HOMEPHONE, @WORKPHONE, @EXTENSION, @ADDRESS1, @CITY, @STATE, @ZIPCODE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30602SI] TO [DYNGRP]
GO