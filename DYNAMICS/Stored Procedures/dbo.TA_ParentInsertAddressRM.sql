SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[TA_ParentInsertAddressRM] @MASTERDB char(15), @CUSTNMBR char(30), @ADRSCODE char(30), @SLPRSNID char(30), @UPSZONE char(5),  @SHIPMTHD char(30), @TAXSCHID char(30), @CNTCPRSN char(40), @ADDRESS1 char(40), 	@ADDRESS2 char(40), @ADDRESS3 char(40), @COUNTRY char(30), @CITY char(40), @STATE char(40), @ZIP char(13), @PHONE1 char(21), 	@PHONE2 char(21), @PHONE3 char(21), @FAX char(21), @MODIFDT datetime, @CREATDDT datetime, @GPSFOINTEGRATIONID char(40),			 @INTEGRATIONSOURCE smallint,			 @INTEGRATIONID char(40),			 @CCode char(10),				 @DECLID char(25),				 @LOCNCODE char(20),				 @SALSTERR char(25),				 @USERDEF1 char(40),				 @USERDEF2 char(40),				 @O_SQL_Error_State int = NULL  output with encryption as set transaction isolation level read uncommitted set nocount on declare @CMPNYNAM char(255), @CUSTNMBR2 char(17),		 @CStatement varchar(1000), @CStatement1 varchar(1000), @CStatement2 varchar(1000), @CStatement3 varchar(1000), @CStatement4 varchar(1000), @CStatement5 varchar(1000), @CStatement6 varchar(1000), @CStatement7 varchar(1000), @CStatement8 varchar(1000), @CStatement9 varchar(1000), @CStatement10 varchar(1000), @CStatement11 varchar(1000), @CStatement12 varchar(1000), @CStatement13 varchar(1000), @CStatement14 varchar(1000), @CStatement15 varchar(1000),	 @iStatus int,			 @O_iErrorState int		 select @CUSTNMBR2 = @CUSTNMBR Exec @iStatus = DYNAMICS..taFormatStringsForExecs @CUSTNMBR, @CUSTNMBR output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @ADRSCODE, @ADRSCODE output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @CNTCPRSN, @CNTCPRSN output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @ADDRESS1, @ADDRESS1 output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @ADDRESS2, @ADDRESS2 output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @ADDRESS3, @ADDRESS3 output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @CITY, @CITY output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @STATE, @STATE output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @ZIP, @ZIP output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @COUNTRY, @COUNTRY output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @SLPRSNID, @SLPRSNID output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @UPSZONE, @UPSZONE output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @SHIPMTHD, @SHIPMTHD output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @TAXSCHID, @TAXSCHID output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @GPSFOINTEGRATIONID, @GPSFOINTEGRATIONID output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @INTEGRATIONID, @INTEGRATIONID output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @CCode, @CCode output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @DECLID, @DECLID output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @LOCNCODE, @LOCNCODE output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @SALSTERR, @SALSTERR output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @USERDEF1, @USERDEF1 output, @O_iErrorState output Exec @iStatus = DYNAMICS..taFormatStringsForExecs @USERDEF2, @USERDEF2 output, @O_iErrorState output if not exists( select 1 from tempdb..sysobjects where name = '##REPLMSTR2') begin create table ##REPLMSTR2 ( TYPE int, VALUE char (200), VALUE2 char (200) ) end if not exists( select 1 from ##REPLMSTR2 where TYPE = 1 and VALUE = @CUSTNMBR2 and VALUE2 = @ADRSCODE) and (@CUSTNMBR2 is not null and @ADRSCODE is not null) begin insert into ##REPLMSTR2 select 1,@CUSTNMBR2, @ADRSCODE declare taParentInsertAddressRM insensitive CURSOR for select REPLICATE_TO_DB from DYNAMICS..TA_Map where MASTERDB = @MASTERDB and Customers = 1 set nocount on OPEN taParentInsertAddressRM FETCH NEXT FROM taParentInsertAddressRM INTO @CMPNYNAM WHILE (@@FETCH_STATUS <> -1) begin select @CStatement = 'if exists (select 1 from '+ rtrim(@CMPNYNAM) + '..RM00101 where CUSTNMBR ='+''+rtrim(@CUSTNMBR)+')'	 select @CStatement1 = 'if not exists (select 1 from '+ rtrim(@CMPNYNAM)+'..RM00102 where CUSTNMBR ='+''+rtrim(@CUSTNMBR)+ ' and ADRSCODE = ' + rtrim(@ADRSCODE)+')' select @CStatement2 = 'insert into '+rtrim(@CMPNYNAM) + '..RM00102 (CUSTNMBR,ADRSCODE,SLPRSNID,UPSZONE,SHIPMTHD,TAXSCHID, CNTCPRSN,ADDRESS1,ADDRESS2,ADDRESS3,COUNTRY,CITY, STATE,ZIP,PHONE1,PHONE2,PHONE3,FAX, MODIFDT,CREATDDT,GPSFOINTEGRATIONID,INTEGRATIONSOURCE,INTEGRATIONID, CCode,DECLID,LOCNCODE,SALSTERR,USERDEF1,USERDEF2)' select @CStatement3 = ' select '+rtrim(@CUSTNMBR)+','+rtrim(@ADRSCODE)+','+rtrim(@SLPRSNID)+','+rtrim(@UPSZONE)+','+rtrim(@SHIPMTHD)+','+rtrim(@TAXSCHID)+',' select @CStatement4 =	''+rtrim(@CNTCPRSN)+','+rtrim(@ADDRESS1)+','+rtrim(@ADDRESS2)+','+rtrim(@ADDRESS3)+','+rtrim(@COUNTRY)+','+rtrim(@CITY)+',' select @CStatement5 =	''+rtrim(@STATE)+','+rtrim(@ZIP)+','''+rtrim(@PHONE1)+''','''+rtrim(@PHONE2)+''','''+rtrim(@PHONE3)+''','''+rtrim(@FAX)+''',' select @CStatement6 =   ''''+rtrim(@MODIFDT)+''','''+rtrim(@CREATDDT)+''','+rtrim(@GPSFOINTEGRATIONID)+','+str(@INTEGRATIONSOURCE)+','+rtrim(@INTEGRATIONID)+','+ rtrim(@CCode)+','+rtrim(@DECLID)+','+rtrim(@LOCNCODE)+','+rtrim(@SALSTERR)+','+rtrim(@USERDEF1)+','+rtrim(@USERDEF2)+'' select @CStatement7 = 'else update '+rtrim(@CMPNYNAM) + '..RM00102 ' select @CStatement8 = ' set  ADRSCODE = '+rtrim(@ADRSCODE)+', SLPRSNID = '+rtrim(@SLPRSNID)+',' select @CStatement9 = '      UPSZONE = '+rtrim(@UPSZONE)+', SHIPMTHD = '+rtrim(@SHIPMTHD)+', TAXSCHID = '+rtrim(@TAXSCHID)+',' select @CStatement10 = '     CNTCPRSN = '+rtrim(@CNTCPRSN)+', ADDRESS1 = '+rtrim(@ADDRESS1)+',' select @CStatement11 = '     ADDRESS2 = '+rtrim(@ADDRESS2)+',  ADDRESS3 = '+rtrim(@ADDRESS3)+', COUNTRY = '+rtrim(@COUNTRY)+',' select @CStatement12 = '     CITY = '+rtrim(@CITY)+', STATE = '+rtrim(@STATE)+', ZIP = '+rtrim(@ZIP)+',' select @CStatement13 = '     PHONE1 = '''+rtrim(@PHONE1)+''', PHONE2 = '''+rtrim(@PHONE2)+''', PHONE3 = '''+rtrim(@PHONE3)+''', FAX = '''+rtrim(@FAX)+''', MODIFDT = '''+rtrim(@MODIFDT)+''', CREATDDT = '''+rtrim(@CREATDDT)+''',' select @CStatement14 = '     GPSFOINTEGRATIONID = '+rtrim(@GPSFOINTEGRATIONID)+', INTEGRATIONSOURCE = '+str(@INTEGRATIONSOURCE)+', INTEGRATIONID = '+rtrim(@INTEGRATIONID)+', CCode = '+rtrim(@CCode)+', DECLID = '+rtrim(@DECLID)+', LOCNCODE = '+rtrim(@LOCNCODE)+', SALSTERR = '+rtrim(@SALSTERR)+', USERDEF1 = '+rtrim(@USERDEF1)+', USERDEF2 = '+rtrim(@USERDEF2)+'' select @CStatement15 = '     where CUSTNMBR = '+rtrim(@CUSTNMBR)+' and ADRSCODE = ' + rtrim(@ADRSCODE) +'' exec (@CStatement + @CStatement1 + @CStatement2 + @CStatement3 + @CStatement4 +  @CStatement5 + @CStatement6 + @CStatement7 + @CStatement8 + @CStatement9 + @CStatement10 +  @CStatement11 + @CStatement12 + @CStatement13 + @CStatement14 + @CStatement15 ) FETCH NEXT FROM taParentInsertAddressRM INTO @CMPNYNAM end DEALLOCATE taParentInsertAddressRM delete ##REPLMSTR2 where VALUE = @CUSTNMBR2 and VALUE2 = @ADRSCODE and TYPE = 1 end 
GO
GRANT EXECUTE ON  [dbo].[TA_ParentInsertAddressRM] TO [DYNGRP]
GO