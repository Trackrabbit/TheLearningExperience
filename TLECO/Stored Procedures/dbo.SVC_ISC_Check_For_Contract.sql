SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_ISC_Check_For_Contract] (  @CUSTNMBR char(15),  @Filter1 varchar(255),  @Filter2 varchar(255)  ) as declare @SVC_Option_Enabled as tinyint declare @NowDate datetime,@NowDateD datetime, @NowDateT datetime  select @SVC_Option_Enabled = SVC_Option_Enabled from SVC00997 where SVC_Module = 'CL' and SVC_Option_Desc = 'Allow Future Contract Selection' select @NowDate = GETDATE() exec SVC_util_split_datetime @NowDate,@NowDateD output, @NowDateT output  if @Filter2 <> '' and @SVC_Option_Enabled = 1  select distinct SVC00601.CONTNBR,SVC00601.LNSEQNBR, SVC00601.CUSTNMBR ,SVC00601.ITEMNMBR, SVC00300.SERLNMBR,SVC00600.DSCRIPTN,SVC00601.EQUIPID  from SVC00601   inner join SVC00300 on (SVC00300.EQUIPID = SVC00601.EQUIPID)  inner join SVC00600 on (SVC00600.CONSTS = SVC00601.CONSTS) and (SVC00600.CONTNBR = SVC00601.CONTNBR)  where (SVC00601.CUSTNMBR = @CUSTNMBR) and (SVC00601.ITEMNMBR = @Filter1) and (SVC00601.SERLNMBR = @Filter2) and (SVC00601.CONSTS=2) and SVC00601.STRTDATE <= @NowDateD else if @Filter2 <> '' and @SVC_Option_Enabled = 0  select distinct SVC00601.CONTNBR,SVC00601.LNSEQNBR, SVC00601.CUSTNMBR ,SVC00601.ITEMNMBR, SVC00300.SERLNMBR,SVC00600.DSCRIPTN,SVC00601.EQUIPID  from SVC00601   inner join SVC00300 on (SVC00300.EQUIPID = SVC00601.EQUIPID)  inner join SVC00600 on (SVC00600.CONSTS = SVC00601.CONSTS) and (SVC00600.CONTNBR = SVC00601.CONTNBR)  where (SVC00601.CUSTNMBR = @CUSTNMBR) and (SVC00601.ITEMNMBR = @Filter1) and (SVC00601.SERLNMBR = @Filter2) and (SVC00601.CONSTS=2) else if @SVC_Option_Enabled = 1 and rtrim(@Filter1) <> ''  select distinct SVC00601.CONTNBR,SVC00601.LNSEQNBR, SVC00601.CUSTNMBR ,SVC00601.ITEMNMBR,SVC00601.SERLNMBR ,SVC00600.DSCRIPTN,SVC00601.EQUIPID  from SVC00601   inner join SVC00600 on (SVC00600.CONSTS = SVC00601.CONSTS) and (SVC00600.CONTNBR = SVC00601.CONTNBR)  where (SVC00601.CUSTNMBR = @CUSTNMBR) and (SVC00601.ITEMNMBR = @Filter1) and (SVC00601.CONSTS=2) else if @SVC_Option_Enabled = 0 and rtrim(@Filter1) <> ''  select distinct SVC00601.CONTNBR,SVC00601.LNSEQNBR, SVC00601.CUSTNMBR ,SVC00601.ITEMNMBR,SVC00601.SERLNMBR ,SVC00600.DSCRIPTN,SVC00601.EQUIPID  from SVC00601   inner join SVC00600 on (SVC00600.CONSTS = SVC00601.CONSTS) and (SVC00600.CONTNBR = SVC00601.CONTNBR)  where (SVC00601.CUSTNMBR = @CUSTNMBR) and (SVC00601.ITEMNMBR = @Filter1) and (SVC00601.CONSTS=2) and SVC00601.STRTDATE <= @NowDateD  order by SVC00601.CONTNBR else if @SVC_Option_Enabled = 1   select distinct SVC00601.CONTNBR,SVC00601.LNSEQNBR, SVC00601.CUSTNMBR ,SVC00601.ITEMNMBR,SVC00601.SERLNMBR ,SVC00600.DSCRIPTN,SVC00601.EQUIPID  from SVC00601   inner join SVC00600 on (SVC00600.CONSTS = SVC00601.CONSTS) and (SVC00600.CONTNBR = SVC00601.CONTNBR)  where (SVC00601.CUSTNMBR = @CUSTNMBR) and (SVC00601.CONSTS=2) else   select distinct SVC00601.CONTNBR,SVC00601.LNSEQNBR, SVC00601.CUSTNMBR ,SVC00601.ITEMNMBR,SVC00601.SERLNMBR ,SVC00600.DSCRIPTN,SVC00601.EQUIPID  from SVC00601   inner join SVC00600 on (SVC00600.CONSTS = SVC00601.CONSTS) and (SVC00600.CONTNBR = SVC00601.CONTNBR)  where (SVC00601.CUSTNMBR = @CUSTNMBR) and (SVC00601.CONSTS=2)and SVC00601.STRTDATE <= @NowDateD  order by SVC00601.CONTNBR return    
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_Check_For_Contract] TO [DYNGRP]
GO
