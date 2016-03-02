SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ASI_SP_CUSTOMER_ADDRESS_LOOKUP]  @temptable varchar(20),  @table varchar(20),  @db varchar(20),  @from1 varchar (254),  @from2 varchar (254),  @from3 varchar (254),  @from4 varchar (254),  @from5 varchar (254),  @from6 varchar (254),  @from7 varchar (254),  @from8 varchar (254),  @from9 varchar (254),  @where1 varchar (254),  @where2 varchar (254),  @where3 varchar (254),  @where4 varchar (254),  @where5 varchar (254),  @where6 varchar (254),  @where7 varchar (254),  @where8 varchar (254),  @where9 varchar (254) AS  exec('delete ' + @temptable +  ' insert ' + @temptable + ' SELECT ' +  @db + 'RM00102.CUSTNMBR,' +  @db + 'RM00102.ADRSCODE,' +  @db + 'RM00102.SLPRSNID,' +  @db + 'RM00102.UPSZONE,' +  @db + 'RM00102.SHIPMTHD,' +  @db + 'RM00102.TAXSCHID,' +  @db + 'RM00102.CNTCPRSN,' +  @db + 'RM00102.ADDRESS1,' +  @db + 'RM00102.ADDRESS2,' +  @db + 'RM00102.ADDRESS3,' +  @db + 'RM00102.COUNTRY,' +  @db + 'RM00102.CITY,' +  @db + 'RM00102.STATE,' +  @db + 'RM00102.ZIP,' +  @db + 'RM00102.PHONE1,' +  @db + 'RM00102.PHONE2,' +  @db + 'RM00102.PHONE3,' +  @db + 'RM00102.FAX,' +  @db + 'RM00102.MODIFDT,' +  @db + 'RM00102.CREATDDT' +  @from1 + @from2 + @from3 + @from4 + @from5 + @from6 + @from7 + @from8 + @from9 + @where1 + @where2 + @where3 + @where4 + @where5 + @where6 + @where7 + @where8 + @where9  )    
GO
GRANT EXECUTE ON  [dbo].[ASI_SP_CUSTOMER_ADDRESS_LOOKUP] TO [DYNGRP]
GO
