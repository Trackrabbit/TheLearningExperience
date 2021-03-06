SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50200SI] (@DOCTYPE smallint, @SOPTYPE smallint, @SOPNUMBE char(21), @LOCNCODE char(11), @CUSTNMBR char(15), @USERID char(15), @SEQNUMBR int, @DOCPRINTSEQ int, @ShipToName char(65), @CNTCPRSN char(61), @ADDRESS1 char(61), @ADDRESS2 char(61), @ADDRESS3 char(61), @CITY char(35), @STATE char(29), @ZIPCODE char(11), @COUNTRY char(61), @SHIPMTHD char(15), @Reprint tinyint, @Email_Type smallint, @PHONNAME char(21), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SOP50200 (DOCTYPE, SOPTYPE, SOPNUMBE, LOCNCODE, CUSTNMBR, USERID, SEQNUMBR, DOCPRINTSEQ, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, SHIPMTHD, Reprint, Email_Type, PHONNAME) VALUES ( @DOCTYPE, @SOPTYPE, @SOPNUMBE, @LOCNCODE, @CUSTNMBR, @USERID, @SEQNUMBR, @DOCPRINTSEQ, @ShipToName, @CNTCPRSN, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @COUNTRY, @SHIPMTHD, @Reprint, @Email_Type, @PHONNAME) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50200SI] TO [DYNGRP]
GO
