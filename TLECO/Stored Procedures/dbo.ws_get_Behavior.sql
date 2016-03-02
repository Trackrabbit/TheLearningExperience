SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[ws_get_Behavior]( 
	@BehaviorId char(36) 
) 
AS 
 
--Behavior 
select	Behavior.BehaviorId, 
	Behavior.NameResXId, 
	Behavior.DescriptionResXId, 
	Behavior.ResXAssemblyName 
from	dbo.WSBehavior as Behavior 
where	Behavior.BehaviorId = @BehaviorId 
 
 
--Behavior Option 
select	BehaviorOption.BehaviorId, 
	BehaviorOption.BehaviorOptionId, 
	BehaviorOption.NameResXId, 
	BehaviorOption.DescriptionResXId, 
	BehaviorOption.ResXAssemblyName 
from	dbo.WSBehaviorOption as BehaviorOption 
where	BehaviorOption.BehaviorId = @BehaviorId 
 
 
--Parameter 
select	Parameter.BehaviorId, 
	Parameter.BehaviorOptionId, 
	Parameter.ParameterId, 
	Parameter.NameResXId, 
	Parameter.DescriptionResXId, 
	Parameter.ResXAssemblyName 
from	dbo.WSParameter as Parameter 
where	Parameter.BehaviorId  = @BehaviorId 
 
GO
GRANT EXECUTE ON  [dbo].[ws_get_Behavior] TO [DYNGRP]
GO
