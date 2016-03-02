SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ASI_SP_PROSPECT_LOOKUP]  @temptable varchar(20),  @table varchar(20),  @db varchar(20),  @from1 varchar (254),  @from2 varchar (254),  @from3 varchar (254),  @from4 varchar (254),  @from5 varchar (254),  @from6 varchar (254),  @from7 varchar (254),  @from8 varchar (254),  @from9 varchar (254),  @where1 varchar (254),  @where2 varchar (254),  @where3 varchar (254),  @where4 varchar (254),  @where5 varchar (254),  @where6 varchar (254),  @where7 varchar (254),  @where8 varchar (254),  @where9 varchar (254) AS  exec('delete ' + @temptable +  ' insert ' + @temptable + ' SELECT ' +  @db + 'SOP00200.PROSPID,' +  @db + 'SOP00200.NOTEINDX,' +  @db + 'SOP00200.CUSTNAME,' +  @db + 'SOP00200.CNTCPRSN,' +  @db + 'SOP00200.ADDRESS1,' +  @db + 'SOP00200.ADDRESS2,' +  @db + 'SOP00200.ADDRESS3,' +  @db + 'SOP00200.CITY,' +  @db + 'SOP00200.STATE,' +  @db + 'SOP00200.ZIP,' +  @db + 'SOP00200.COUNTRY,' +  @db + 'SOP00200.CUSTCLAS,' +  @db + 'SOP00200.PHONE1,' +  @db + 'SOP00200.PHONE2,' +  @db + 'SOP00200.PHONE3,' +  @db + 'SOP00200.PRCLEVEL,' +  @db + 'SOP00200.FAX,' +  @db + 'SOP00200.SHIPMTHD,' +  @db + 'SOP00200.TAXSCHID,' +  @db + 'SOP00200.USERDEF1,' +  @db + 'SOP00200.USERDEF2,' +  @db + 'SOP00200.USER2ENT,' +  @db + 'SOP00200.CREATDDT,' +  @db + 'SOP00200.MODIFDT' +  @from1 + @from2 + @from3 + @from4 + @from5 + @from6 + @from7 + @from8 + @from9 + @where1 + @where2 + @where3 + @where4 + @where5 + @where6 + @where7 + @where8 + @where9  )   
GO
GRANT EXECUTE ON  [dbo].[ASI_SP_PROSPECT_LOOKUP] TO [DYNGRP]
GO
