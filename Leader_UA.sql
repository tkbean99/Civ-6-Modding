/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,								Kind			)
VALUES	('TRAIT_LEADER_FROM_THIRD_WORLD_TO_FIRST',	'KIND_TRAIT'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description										)
VALUES	('TRAIT_LEADER_FROM_THIRD_WORLD_TO_FIRST',	'LOC_TRAIT_LEADER_FROM_THIRD_WORLD_TO_FIRST_NAME',	'LOC_TRAIT_LEADER_FROM_THIRD_WORLD_TO_FIRST_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_TKB_LKY',	'TRAIT_LEADER_FROM_THIRD_WORLD_TO_FIRST'	);
		
-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,								ModifierId										)
VALUES	('TRAIT_LEADER_FROM_THIRD_WORLD_TO_FIRST', 'TRAIT_SG_CITY_PROJECTS_PRODUCTION_BOOST'),
		('TRAIT_LEADER_FROM_THIRD_WORLD_TO_FIRST', 'TRAIT_SG_CULTURE_BONUS_FROM_TRADE_ROUTE_TO_ALLY'),
		('TRAIT_LEADER_FROM_THIRD_WORLD_TO_FIRST', 'TRAIT_SG_SCIENCE_BONUS_FROM_TRADE_ROUTE_TO_ALLY'),
		('TRAIT_LEADER_FROM_THIRD_WORLD_TO_FIRST','TRAIT_SG_FAVOR_FROM_ECONOMIC_POLICY'),
		('TRAIT_LEADER_FROM_THIRD_WORLD_TO_FIRST','TRAIT_SG_ONE_ENVOY_POINT_PER_TURN');

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,		SubjectRequirementSetId)
VALUES	('TRAIT_SG_CITY_PROJECTS_PRODUCTION_BOOST',		'MODIFIER_PLAYER_CITIES_ADJUST_ALL_PROJECTS_PRODUCTION', NULL),
		('TRAIT_SG_CULTURE_BONUS_FROM_TRADE_ROUTE_TO_ALLY','MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER','ROUTE_BETWEEN_ALLIES_REQUIREMENTS'),
		('TRAIT_SG_SCIENCE_BONUS_FROM_TRADE_ROUTE_TO_ALLY','MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER','ROUTE_BETWEEN_ALLIES_REQUIREMENTS'),
		('TRAIT_SG_FAVOR_FROM_ECONOMIC_POLICY' ,'MODIFIER_PLAYER_ADJUST_GOVERNMENT_SLOT_TYPE_GRANT_FAVOR', NULL),
		('TRAIT_SG_ONE_ENVOY_POINT_PER_TURN',		'MODIFIER_PLAYER_ADJUST_INFLUENCE_POINTS_PER_TURN', NULL);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,											Name,							Value									)
VALUES	('TRAIT_SG_CITY_PROJECTS_PRODUCTION_BOOST',			'Amount',					30				), 
		('TRAIT_SG_CULTURE_BONUS_FROM_TRADE_ROUTE_TO_ALLY', 'Amount',	2),
		('TRAIT_SG_CULTURE_BONUS_FROM_TRADE_ROUTE_TO_ALLY', 'YieldType',	'YIELD_CULTURE'),
		('TRAIT_SG_SCIENCE_BONUS_FROM_TRADE_ROUTE_TO_ALLY','Amount', 2),
		('TRAIT_SG_SCIENCE_BONUS_FROM_TRADE_ROUTE_TO_ALLY','YieldType', 'YIELD_SCIENCE'),
		('TRAIT_SG_FAVOR_FROM_ECONOMIC_POLICY','GovernmentSlotType','SLOT_ECONOMIC'),
		('TRAIT_SG_FAVOR_FROM_ECONOMIC_POLICY','Amount',1),
		('TRAIT_SG_ONE_ENVOY_POINT_PER_TURN',			'Amount',					1					);