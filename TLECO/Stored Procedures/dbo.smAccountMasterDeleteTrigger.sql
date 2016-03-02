SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smAccountMasterDeleteTrigger] as  exec ('create trigger dbo.glpAccountMasterDeleteTrigger on GL00100 for delete as  declare @MS_ITEM_3 int,  @cNormal varchar(255),  @cClearing varchar(255),  @cQuick varchar(255),  @cInterID char(5),  @cCompanyName char(65)  select @MS_ITEM_3 =  power(2, 26) select @cNormal = ''GL_Normal'' select @cClearing = ''GL_Clearing'' select @cQuick = ''GL_Business'' select @cInterID = DB_Name()  select   @cCompanyName = CMPNYNAM  from   DYNAMICS..SY01500  where   INTERID = @cInterID  update   wkPostingValidationState  set  GLBCHVAL = GLBCHVAL | @MS_ITEM_3 insert   wkPostingValidationState (  BCHSOURC,  BACHNUMB,  GLBCHVAL ) select  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_3  from  SY00500 A left outer join wkPostingValidationState B on (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB) where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL  insert   wkPostingValidationState (  BCHSOURC,  BACHNUMB,   GLBCHVAL ) select distinct  A.BCHSOURC,  A.BACHNUMB,  @MS_ITEM_3 from  DYNAMICS..SY00800 A left outer join wkPostingValidationState B on   (A.BCHSOURC = B.BCHSOURC and A.BACHNUMB = B.BACHNUMB)  where  ( A.BCHSOURC = @cNormal  or A.BCHSOURC = @cClearing  or A.BCHSOURC = @cQuick)  and B.BCHSOURC IS NULL and  A.CMPNYNAM = @cCompanyName  delete from GL00100F1 from GL00100F1 f1, deleted d where f1.ACTINDX = d.ACTINDX  delete from GL00100F2 from GL00100F2 f2, deleted d where f2.ACTINDX = d.ACTINDX  delete from GL00100F3 from GL00100F3 f3, deleted d where f3.ACTINDX = d.ACTINDX  delete from GL00100F4 from GL00100F4 f4, deleted d where f4.ACTINDX = d.ACTINDX  delete frl_acct_code from frl_acct_code a, deleted d where a.acct_id = d.ACTINDX ')    
GO
GRANT EXECUTE ON  [dbo].[smAccountMasterDeleteTrigger] TO [DYNGRP]
GO
