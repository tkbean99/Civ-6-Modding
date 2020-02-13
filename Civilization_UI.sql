/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types	
		(Type,									Kind			)
VALUES	('TRAIT_CIVILIZATION_TKB_HDB_ESTATE',	'KIND_TRAIT'	),
		('DISTRICT_TKB_HDB_ESTATE',	'KIND_DISTRICT'	);
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,								Name								)
VALUES	('TRAIT_CIVILIZATION_TKB_HDB_ESTATE',	'LOC_TRAIT_CIVILIZATION_TKB_HDB_ESTATE_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,								CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_TKB_HDB_ESTATE',	'CIVILIZATION_TKB_SINGAPORE'	);

-----------------------------------------------
-- Districts
-----------------------------------------------
INSERT INTO Districts	
		(DistrictType,	Name,	PrereqTech, PrereqCivic,	Coast, Description, Cost,	RequiresPlacement,	RequiresPopulation,		NoAdjacentCity,	CityCenter, Aqueduct,InternalOnly,ZOC,FreeEmbark,HitPoints,CaptureRemovesBuildings,CaptureRemovesCityDefenses,PlunderType,PlunderAmount,TradeEmbark,MilitaryDomain,CostProgressionModel,CostProgressionParam1,TraitType,Appeal,Housing,Entertainment,OnePerCity,AllowsHolyCity,Maintenance,AirSlots,CitizenSlots,TravelTime,CityStrengthModifier,AdjacentToLand,CanAttack,AdvisorType,CaptureRemovesDistrict,MaxPerPlayer)
SELECT 'DISTRICT_TKB_HDB_ESTATE', 'LOC_DISTRICT_TKB_HDB_ESTATE_NAME', PrereqTech, PrereqCivic, Coast, 'LOC_TRAIT_CIVILIZATION_TKB_HDB_ESTATE_DESCRIPTION', Cost/2, RequiresPlacement, RequiresPopulation, NoAdjacentCity, CityCenter, Aqueduct,InternalOnly,ZOC,FreeEmbark,HitPoints,CaptureRemovesBuildings,CaptureRemovesCityDefenses,PlunderType,PlunderAmount,TradeEmbark,MilitaryDomain,CostProgressionModel,CostProgressionParam1,'TRAIT_CIVILIZATION_TKB_HDB_ESTATE',Appeal,Housing+6,Entertainment,OnePerCity,AllowsHolyCity,Maintenance,AirSlots,CitizenSlots,TravelTime,CityStrengthModifier,AdjacentToLand,CanAttack,AdvisorType,CaptureRemovesDistrict,MaxPerPlayer 
FROM Districts WHERE DistrictType='DISTRICT_NEIGHBORHOOD';

--INSERT INTO Districts	
--		(DistrictType,	Name,	PrereqTech, PrereqCivic,	Coast, Description, Cost,	RequiresPlacement,	RequiresPopulation,		NoAdjacentCity,	CityCenter, Aqueduct,InternalOnly,ZOC,FreeEmbark,HitPoints,CaptureRemovesBuildings,CaptureRemovesCityDefenses,PlunderType,PlunderAmount,TradeEmbark,MilitaryDomain,CostProgressionModel,CostProgressionParam1,TraitType,Appeal,Housing,Entertainment,OnePerCity,AllowsHolyCity,Maintenance,AirSlots,CitizenSlots,TravelTime,CityStrengthModifier,AdjacentToLand,CanAttack,AdvisorType,CaptureRemovesDistrict,MaxPerPlayer)
--SELECT 'DISTRICT_TKB_HDB_ESTATE', 'LOC_DISTRICT_TKB_HDB_ESTATE_NAME', Coast, PrereqTech, PrereqCivic, 'LOC_DISTRICT_TKB_HDB_ESTATE_DESCRIPTION', Cost/2, RequiresPlacement, RequiresPopulation, NoAdjacentCity, CityCenter, Aqueduct,InternalOnly,ZOC,FreeEmbark,HitPoints,CaptureRemovesBuildings,CaptureRemovesCityDefenses,PlunderType,PlunderAmount,TradeEmbark,MilitaryDomain,CostProgressionModel,CostProgressionParam1,'TRAIT_CIVILIZATION_TKB_HDB_ESTATE',Appeal,Housing=10,Entertainment=3,OnePerCity,AllowsHolyCity,Maintenance,AirSlots,CitizenSlots,TravelTime,CityStrengthModifier,AdjacentToLand,CanAttack,AdvisorType,CaptureRemovesDistrict,MaxPerPlayer 
--FROM Districts WHERE DistrictType='DISTRICT_NEIGHBORHOOD';
-----------------------------------------------
-- DistrictReplaces
-----------------------------------------------
INSERT INTO DistrictReplaces
		(CivUniqueDistrictType,		ReplacesDistrictType	)
VALUES	('DISTRICT_TKB_HDB_ESTATE',	'DISTRICT_NEIGHBORHOOD'		);

-----------------------------------------------
-- DistrictModifiers
-----------------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType, ModifierId)
SELECT	'DISTRICT_TKB_HDB_ESTATE', ModifierId
FROM DistrictModifiers WHERE DistrictType='DISTRICT_NEIGHBORHOOD';

INSERT INTO DistrictModifiers
		(DistrictType, ModifierId)
VALUES	('DISTRICT_TKB_HDB_ESTATE',	'TKB_HDB_ESTATE_FOOD'),	
		('DISTRICT_TKB_HDB_ESTATE','TKB_HDB_ESTATE_CULTURE'),
		('DISTRICT_TKB_HDB_ESTATE','TKB_HDB_ESTATE_TRADE_ROUTE_CAPACITY');

-----------------------------------------------
-- Modifiers
-----------------------------------------------
INSERT INTO Modifiers
		(ModifierId, ModifierType)
VALUES  ('TKB_HDB_ESTATE_TRADE_ROUTE_CAPACITY','MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY'),
		('TKB_HDB_ESTATE_FOOD','MODIFIER_PLAYER_DISTRICT_ADJUST_BASE_YIELD_CHANGE'),
		('TKB_HDB_ESTATE_CULTURE','MODIFIER_PLAYER_DISTRICT_ADJUST_BASE_YIELD_CHANGE');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,Name,Value)
VALUES  ('TKB_HDB_ESTATE_TRADE_ROUTE_CAPACITY','Amount',1),
		('TKB_HDB_ESTATE_FOOD','YieldType','YIELD_FOOD'),
		('TKB_HDB_ESTATE_FOOD','Amount',2),
		('TKB_HDB_ESTATE_CULTURE','YieldType','YIELD_CULTURE'),
		('TKB_HDB_ESTATE_CULTURE','Amount',2);