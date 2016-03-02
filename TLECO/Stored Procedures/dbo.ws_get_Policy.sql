SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[ws_get_Policy](  
	@PolicyId char(36),  
	@RoleId char(36)    
)  
 AS  
  
--Policy  
select    PolicyId,   
	NameResXId,  
	ResXAssemblyName,  
	RootBusinessObjectNameResXId 
from   	dbo.WSPolicy as policy  
where 	PolicyId = @PolicyId  
 
 
--Behavior 
select  PolicyBehavior.PolicyId,   
	PolicyBehavior.BehaviorId,   
	PolicyBehavior.IsInternal,   
	Behavior.NameResXId,   
	Behavior.DescriptionResXId,   
	Behavior.ResXAssemblyName,   
	BehaviorChoice.SelectedBehaviorOptionId,   
	BehaviorOption.NameResXId as OptionNameResXId,   
	BehaviorOption.DescriptionResXId as OptionDescriptionResXId,   
	BehaviorOption.ResXAssemblyName as OptionResXAssemblyName   
from   	dbo.WSPolicyBehavior as PolicyBehavior,   
	dbo.WSBehavior as Behavior,   
	dbo.WSPolicyBehaviorSelection as BehaviorChoice,   
	dbo.WSBehaviorOption as BehaviorOption   
where 	PolicyBehavior.PolicyId  = @PolicyId  
and	Behavior.BehaviorId = PolicyBehavior.BehaviorId   
and	BehaviorChoice.PolicyId = PolicyBehavior.PolicyId   
and	BehaviorChoice.BehaviorId = PolicyBehavior.BehaviorId   
and	BehaviorChoice.RoleId = @RoleId  
and	BehaviorOption.BehaviorId = BehaviorChoice.BehaviorId   
and	BehaviorOption.BehaviorOptionId = BehaviorChoice.SelectedBehaviorOptionId   
  
union all  
  
select  PolicyBehavior.PolicyId,   
	PolicyBehavior.BehaviorId,   
	PolicyBehavior.IsInternal,   
	Behavior.NameResXId,   
	Behavior.DescriptionResXId,   
	Behavior.ResXAssemblyName,   
	BehaviorChoice.SelectedBehaviorOptionId,   
	BehaviorOption.NameResXId as OptionNameResXId,   
	BehaviorOption.DescriptionResXId as OptionDescriptionResXId,   
	BehaviorOption.ResXAssemblyName as OptionResXAssemblyName   
from   	dbo.WSPolicyBehavior as PolicyBehavior,   
	dbo.WSBehavior as Behavior,   
	dbo.WSPolicyBehaviorSelection as BehaviorChoice,   
	dbo.WSBehaviorOption as BehaviorOption   
where 	PolicyBehavior.PolicyId  = @PolicyId  
and	PolicyBehavior.BehaviorId not in   
            (  
            select  distinct(BehaviorChoice.BehaviorId)  
            from      dbo.WSPolicyBehaviorSelection as BehaviorChoice  
            where    BehaviorChoice.PolicyId = @PolicyId  
            and       BehaviorChoice.RoleId = @RoleId  
            )   
and	Behavior.BehaviorId = PolicyBehavior.BehaviorId   
and	BehaviorChoice.PolicyId = PolicyBehavior.PolicyId   
and	BehaviorChoice.BehaviorId = PolicyBehavior.BehaviorId   
and	BehaviorChoice.RoleId = '00000000-0000-0000-0000-000000000000'  
and	BehaviorOption.BehaviorId = BehaviorChoice.BehaviorId   
and	BehaviorOption.BehaviorOptionId = BehaviorChoice.SelectedBehaviorOptionId   
  
  
--Behavior Option  
select    PolicyBehavior.PolicyId,  
	PolicyBehavior.BehaviorId,   
	PolicyBehavior.IsInternal,  
	BehaviorOption.BehaviorOptionId,  
	BehaviorOption.NameResXId,   
	BehaviorOption.DescriptionResXId,  
	BehaviorOption.ResXAssemblyName  
from   	dbo.WSPolicyBehavior as PolicyBehavior,  
	dbo.WSBehaviorOption as BehaviorOption  
where 	PolicyBehavior.PolicyId = @PolicyId  
and	PolicyBehavior.BehaviorId = BehaviorOption.BehaviorId  
  
  
--Parameter  
select    PolicyBehavior.PolicyId,   
	PolicyBehavior.BehaviorId,  
	PolicyBehavior.IsInternal,  
	Parameter.BehaviorOptionId,  
	Parameter.ParameterId,  
	Parameter.NameResXId,   
	Parameter.DescriptionResXId,  
	Parameter.ResXAssemblyName  
from   	dbo.WSPolicyBehavior as PolicyBehavior,  
	dbo.WSParameter as Parameter  
where 	PolicyBehavior.PolicyId = @PolicyId  
and	PolicyBehavior.BehaviorId = Parameter.BehaviorId  
 
--Parameter Values 
select	PolicyBehavior.PolicyId,   
	PolicyBehavior.BehaviorId,   
	PolicyBehavior.IsInternal,   
	Parameter.ParameterId,   
	Parameter.NameResXId,   
	Parameter.DescriptionResXId,   
	Parameter.ResXAssemblyName,   
	ParameterValue.SelectedBehaviorOptionId,   
	ParameterValue.ParameterValue   
from	dbo.WSPolicyBehavior as PolicyBehavior,   
	dbo.WSParameter as Parameter,   
	dbo.WSPolicyBehaviorSelectionParameter as ParameterValue   
where 	PolicyBehavior.PolicyId  = @PolicyId  
and	ParameterValue.PolicyId = PolicyBehavior.PolicyId   
and	ParameterValue.BehaviorId = PolicyBehavior.BehaviorId   
and	ParameterValue.RoleId = @RoleId   
and	Parameter.BehaviorId = ParameterValue.BehaviorId   
and	Parameter.BehaviorOptionId = ParameterValue.SelectedBehaviorOptionId   
and	Parameter.ParameterId = ParameterValue.ParameterId   
 
union all  
 
select	PolicyBehavior.PolicyId,   
	PolicyBehavior.BehaviorId,   
	PolicyBehavior.IsInternal,   
	Parameter.ParameterId,   
	Parameter.NameResXId,   
	Parameter.DescriptionResXId,   
	Parameter.ResXAssemblyName,   
	ParameterValue.SelectedBehaviorOptionId,   
	ParameterValue.ParameterValue   
from	dbo.WSPolicyBehavior as PolicyBehavior,   
	dbo.WSParameter as Parameter,   
	dbo.WSPolicyBehaviorSelectionParameter as ParameterValue   
where 	PolicyBehavior.PolicyId  = @PolicyId  
and	PolicyBehavior.BehaviorId not in   
            (  
            select  distinct(BehaviorChoice.BehaviorId)  
            from      dbo.WSPolicyBehaviorSelection as BehaviorChoice  
            where    BehaviorChoice.PolicyId = @PolicyId  
            and       BehaviorChoice.RoleId = @RoleId  
            )   
and	ParameterValue.PolicyId = PolicyBehavior.PolicyId   
and	ParameterValue.BehaviorId = PolicyBehavior.BehaviorId   
and	ParameterValue.RoleId = '00000000-0000-0000-0000-000000000000'   
and	Parameter.BehaviorId = ParameterValue.BehaviorId   
and	Parameter.BehaviorOptionId = ParameterValue.SelectedBehaviorOptionId   
and	Parameter.ParameterId = ParameterValue.ParameterId  
GO
GRANT EXECUTE ON  [dbo].[ws_get_Policy] TO [DYNGRP]
GO
