SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_AddContractToCall] (  @srvrectype smallint = 0,  @callnbr char(11),  @consts smallint = 0,  @contnbr char(11) = '',  @lnseqnbr numeric(19,5) = 0 ) As set nocount on  declare @itemnmbr varchar(31),  @equipid integer,  @labpct  numeric(19,5),  @partpct  numeric(19,5),  @miscpct  numeric(19,5),  @ServiceType char(11) select @itemnmbr = ITEMNMBR,  @equipid = EQUIPID,  @labpct = LABPCT,  @partpct = PARTPCT,  @miscpct = MISCPCT,  @ServiceType = SRVTYPE from SVC00601 where CONSTS = @consts and  CONTNBR = @contnbr and  LNSEQNBR = @lnseqnbr update SVC00200  set CONSTS = @consts,   CONTNBR = @contnbr,  SVC_Contract_Line_SEQ = @lnseqnbr,  LABPCT = @labpct,  PARTPCT = @partpct,  MISCPCT = @miscpct,  SRVTYPE = @ServiceType where SVC00200.SRVRECTYPE = @srvrectype  and SVC00200.CALLNBR = @callnbr update SVC00202  set ITEMNMBR =  @itemnmbr,  EQUIPID = @equipid  where SVC00202.SRVRECTYPE = @srvrectype  and SVC00202.CALLNBR = @callnbr   return     
GO
GRANT EXECUTE ON  [dbo].[SVC_AddContractToCall] TO [DYNGRP]
GO
