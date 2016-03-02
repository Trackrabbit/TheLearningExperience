SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Print_Call_HTML]  (@Path varchar(255),  @srvrectype integer = NULL,  @callnbr char(11) = NULL) as declare @where varchar(255) declare @outfile varchar(255) declare @DATABASE varchar(255) declare @Templates varchar(255) select @DATABASE = DB_NAME() select @where = 'exec SVC_Get_HTML_Call_Data  ' + CONVERT(CHAR(1),@srvrectype) + ', ''' + RTRIM(@callnbr) + '''' select @where = @where + ' select ITEMNMBR, ITEMDESC, QTYSOLD from SVC00203 where SRVRECTYPE = ' + CONVERT(CHAR(1),@srvrectype) + ' and CALLNBR = ''' + @callnbr + ''' and LINITMTYP = ''P'''  select @outfile = rtrim(@Path) + '\Calls\' + @callnbr + '.html' select @Templates =  rtrim(@Path) + '\Keyword.htx' execute sp_makewebtask @outputfile = @outfile, @query = @where ,  @templatefile = @Templates, @dbname = @DATABASE, @whentype = 1   
GO
GRANT EXECUTE ON  [dbo].[SVC_Print_Call_HTML] TO [DYNGRP]
GO
