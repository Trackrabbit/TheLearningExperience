SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procedure [dbo].[aagGetCompanyStatus]  @iIntercompanyID varchar(5) = NULL,   @oCompanyID smallint = NULL out,  @oCompanyStatus smallint = NULL out,  @oStatus smallint = NULL out as  select  @oCompanyID = 0,  @oCompanyStatus = 0,  @oStatus = 0  if (@iIntercompanyID is NULL) begin select @oStatus = 22000 return end  if (@iIntercompanyID = '') begin select @oStatus = 22001 return end  if not exists(select * from sysobjects where name = 'AAG00104' and type = 'U')  begin select @oStatus = 22003 return end  else if not exists(select * from AAG00104 join SY01500 on AAG00104.CMPANYID = SY01500.CMPANYID  where SY01500.INTERID = @iIntercompanyID)  begin select @oStatus = 22004 return end else  select @oCompanyStatus = aaCompanyStatus, @oCompanyID = AAG00104.CMPANYID  from   AAG00104  join   SY01500 on AAG00104.CMPANYID = SY01500.CMPANYID  where  SY01500.INTERID = @iIntercompanyID return 0    
GO
