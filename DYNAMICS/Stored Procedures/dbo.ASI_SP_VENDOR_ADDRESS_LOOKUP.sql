SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ASI_SP_VENDOR_ADDRESS_LOOKUP]  @temptable varchar(20),  @table varchar(20),  @db varchar(20),  @from1 varchar (254),  @from2 varchar (254),  @from3 varchar (254),  @from4 varchar (254),  @from5 varchar (254),  @from6 varchar (254),  @from7 varchar (254),  @from8 varchar (254),  @from9 varchar (254),  @where1 varchar (254),  @where2 varchar (254),  @where3 varchar (254),  @where4 varchar (254),  @where5 varchar (254),  @where6 varchar (254),  @where7 varchar (254),  @where8 varchar (254),  @where9 varchar (254) AS  exec('delete ' + @temptable +  ' insert ' + @temptable + ' SELECT ' +  @db + 'PM00300.VENDORID,' +  @db + 'PM00300.ADRSCODE,' +  @db + 'PM00300.VNDCNTCT,' +  @db + 'PM00300.ADDRESS1,' +  @db + 'PM00300.ADDRESS2,' +  @db + 'PM00300.ADDRESS3,' +  @db + 'PM00300.CITY,' +  @db + 'PM00300.STATE,' +  @db + 'PM00300.ZIPCODE,' +  @db + 'PM00300.COUNTRY,' +  @db + 'PM00300.UPSZONE,' +  @db + 'PM00300.PHNUMBR1,' +  @db + 'PM00300.PHNUMBR2,' +  @db + 'PM00300.PHONE3,' +  @db + 'PM00300.FAXNUMBR,' +  @db + 'PM00300.SHIPMTHD,' +  @db + 'PM00300.TAXSCHID' +  @from1 + @from2 + @from3 + @from4 + @from5 + @from6 + @from7 + @from8 + @from9 + @where1 + @where2 + @where3 + @where4 + @where5 + @where6 + @where7 + @where8 + @where9  )    
GO
GRANT EXECUTE ON  [dbo].[ASI_SP_VENDOR_ADDRESS_LOOKUP] TO [DYNGRP]
GO
