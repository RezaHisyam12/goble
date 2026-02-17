-------------------------------------------------------------------------------------------------------------------------------------------------
-- FRONTLINE AI
-------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
-- AGGRESSIVENESS
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.AGGRESSIVENESS_CHECK_BASE = 1.5               -- restore vanilla (1.4 → 1.5)
NDefines.NAI.AGGRESSIVENESS_CHECK_EASY_TARGET = -0.4       -- tone down significantly (-0.7 → -0.4)
NDefines.NAI.AGGRESSIVENESS_CHECK_CAREFUL = 0.7            -- slight increase from vanilla (0.6 → 0.7)
NDefines.NAI.AGGRESSIVENESS_CHECK_PARTLY_FORTIFIED = 1.8   -- keep (minor effect)
NDefines.NAI.AGGRESSIVENESS_CHECK_PARTLY_FORTIFIED_WEAK_POINTS = 0.65  -- slight restore (0.6 → 0.65)
NDefines.NAI.AGGRESSIVENESS_CHECK_FULLY_FORTIFIED = 8.0    -- keep (negligible in practice)
NDefines.NAI.AGGRESSIVENESS_CHECK_FULLY_FORTIFIED_POCKET = 4.0  -- tone down (-0.7 → 4.0)

--------------------------------------------------------------------------------------------------------------
-- RESEARCH
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.RESEARCH_DAYS_BETWEEN_WEIGHT_UPDATE = 1

NDefines.NAI.MAX_AHEAD_RESEARCH_PENALTY = 7
NDefines.NAI.XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 3.0		-- AI will at least need this amount of xp compared to cost of a tech to reserch it with XP			
NDefines.NAI.RESEARCH_WITH_XP_AI_WEIGHT_MULT = 1.5 				-- AI will bump score of a research with this mult if it can use XP

NDefines.NAI.RESEARCH_NAVAL_DOCTRINE_NEED_GAIN_FACTOR = 0.075 -- Multiplies value based on relative naval industry size / country size.

NDefines.NAI.RESEARCH_NEW_WEIGHT_FACTOR = 0.5 			-- Impact of previously unexplored tech weights. Higher means more random exploration.
NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 5.0		-- To which extent AI should care about ahead of time penalties to research
NDefines.NAI.RESEARCH_BASE_DAYS = 60					-- AI adds a base number of days when weighting completion time for techs to ensure it doesn't only research quick techs

NDefines.NAI.RESEARCH_YEARS_BEHIND_FACTOR = 0.3 -- (was 0.2) --To which extent AI should care about not falling behind (i.e. increase weight for old tech)

NDefines.NAI.RESEARCH_LAND_DOCTRINE_NEED_GAIN_FACTOR = 0.12 -- Multiplies value based on relative military industry size / country size.

NDefines.NAI.RESEARCH_AHEAD_BONUS_FACTOR = 10.0
NDefines.NAI.RESEARCH_BONUS_FACTOR = 2.0

--------------------------------------------------------------------------------------------------------------
-- FUEL
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_ARMY_MAX_CONSUMPTION = 120
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_AIR_MAX_CONSUMPTION = 120
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_NAVY_MAX_CONSUMPTION = 120

--------------------------------------------------------------------------------------------------------------
-- LAND AI
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.EASY_TARGET_FRONT_IMPORTANCE = 7.5
NDefines.NAI.MAIN_ENEMY_FRONT_IMPORTANCE = 5.0

NDefines.NAI.LAND_DEFENSE_SUPPLY_HUB_IMPORTANCE = 200

NDefines.NAI.ASSIGN_TANKS_TO_WAR_FRONT = 12.0 -- Vanilla 6.0
NDefines.NAI.ASSIGN_TANKS_TO_NON_WAR_FRONT = 0.1 -- Vanilla 0.4

NDefines.NAI.UPDATE_SUPPLY_MOTORIZATION_FREQUENCY_HOURS = 20 				-- Vanilla is 52  Check if activating motorization would improve supply situation this often.

NDefines.NAI.SCARY_LEVEL_AVERAGE_DEFENSE = -1.0                               -- average front defense modifier to make it consider it as a PITA to go for

NDefines.NAI.CANCEL_COMBAT_DISADVANTAGE_RATIO = 1.25	-- Vanilla 1.5                     -- If the enemy's advantage ratio over us during (normal) combat is more than <value>, allow canceling the attack
NDefines.NAI.CANCEL_COMBAT_MIN_DURATION_HOURS = 60	-- Vanilla 48 						-- Only allow canceling (normal) combat if at least <value> hours have passed
NDefines.NAI.CANCEL_INVASION_COMBAT_DISADVANTAGE_RATIO = 2.8	-- Vanilla 3.5 			-- If the enemy's advantage ratio over us during invasion combat is more than <value>, allow canceling the attack
NDefines.NAI.CANCEL_INVASION_COMBAT_MIN_DURATION_HOURS = 72	-- Vanilla 120			-- Only allow canceling invasion combat if at least <value> hours have passed

NDefines.NAI.REDEPLOY_DISTANCE_VS_ORDER_SIZE = 0.9 			                -- Factor applied to the path length of a unit compared to length of an order to determine if it should use strategic redeployment
NDefines.NAI.UNIT_ASSIGNMENT_TERRAIN_IMPORTANCE = 10.0 		                -- Terrain score for units are multiplied by this when the AI is deciding which front they should be assigned to

NDefines.NAI.FRONT_TERRAIN_DEFENSE_FACTOR = 7.0			-- Multiplier applied to unit defense modifier for terrain on front province multiplied by terrain importance
NDefines.NAI.FRONT_TERRAIN_ATTACK_FACTOR = 7.0			-- Multiplier applied to unit attack modifier for terrain on enemy front province multiplied by terrain importance
--NDefines.NAI.FRONT_CUTOFF_MIN_EDGE_PROXIMITY = 2								-- Minimum number of provinces to the front edge to determine for cutoff oportunity.

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.60						-- Minimum org % for a unit to actively attack an enemy unit when executing a plan	
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.85						-- Minimum strength  % for a unit to actively attack an enemy unit when executing a plan

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.40						-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.60

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.30	
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.45	

NDefines.NAI.PLAN_VALUE_TO_EXECUTE = -0.6     -- Vanilla -0.5                                     -- AI will typically avoid carrying out a plan it below this value (0.0 is considered balanced).
NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.35 -- Vanilla -0.5		        -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.PLAN_FACTION_NORMAL_TO_EXECUTE = 0.3  -- Vanilla -0.65					 -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.30  -- Vanilla -0.65		        -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.PLAN_AVG_PREPARATION_TO_EXECUTE = 0.4	-- Vanilla -0.5	            -- % or more average plan preparation before executing

NDefines.NAI.FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.35
NDefines.NAI.HEAVILY_FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.5

NDefines.NAI.PLAN_ACTIVATION_SUPERIORITY_AGGRO = 10.0 --default 1.0		-- How aggressive a country is in activating a plan based on how superiour their force is.

NDefines.NAI.DYNAMIC_STRATEGIES_THREAT_FACTOR = 8.0
NDefines.NAI.BASE_DISTANCE_TO_CARE = 400.0

NDefines.NAI.ASSIGN_MOUNTAINEERS_TO_MOUNTAINS = 50.0

------ AI Superchargers -----------
-- These 4 defines below genuinely make the AI somehow smarter and supercharges it with the right values
NDefines.NAI.FRONT_EVAL_UNIT_ACCURACY = 2.0	-- Vanilla 1.0	-- scale how stupid ai will act on fronts. 0 is potato
NDefines.NAI.FRONT_EVAL_UNIT_AIR_SUP_IMPACT = 2.0 -- Vanilla 1.0	-- scale how good the AI thinks air superiority is for units
NDefines.NAI.FRONT_EVAL_PERCENT_TO_ASSIST_ALLY_FRONT = 0.75  -- Vanilla 0.5  percentage of how many units the AI thinks it should have compared to an ally before considering sending units
NDefines.NAITheatre.FRONT_EVAL_UNIT_SUPPLY_AND_ORG_LACK_IMPACT = 1.5	-- Vanilla 1.0; scale how painful the AI thinks a combined lack of supply and organization is for units	

---NDefines.NAI.PLAN_STEP_COST_LIMIT = 15          --- vanilla 9; When stepping to draw a plan this cost makes it break if it hits hard terrain (multiplied by number of desired steps)	
---NDefines.NAI.PLAN_STEP_COST_LIMIT_REDUCTION = 0.012   -- vanilla 3	Cost limit is reduced per iteration, making hard terrain less likely to be crossed the further into enemy territory it is	
---NDefines.NAI.PLAN_ATTACK_DEPTH_FACTOR = 0.1		--- vanilla 0.5; Factor applied to size or enemy being attacked.		
NDefines.NAI.MIN_AI_UNITS_PER_TILE_FOR_STANDARD_COHESION = 1.5

NDefines.NAI.FRONT_CUTOFF_MIN_EDGE_PROXIMITY = 2	--- vanilla 2; Minimum number of provinces to the front edge to determine for cutoff oportunity.	
NDefines.NAI.FRONT_BULGE_RATIO_LOWER_CUTOFF = 0.85	--- vanilla 0.95; If local bulginess drops below this, a point of interest is found	
NDefines.NAI.FRONT_BULGE_RATIO_UPPER_CUTOFF = 1.4	--- vanilla 1.5; If total bulginess is lower than this, the front is ignored.	

NDefines.NAI.GARRISON_FRACTION = 0.0					-- DONT CHANGE THIS AS THIS FUCKS WITH VOLUNTEERS AND MAKE EM DO NOTHING AND BE PASSIVE How large part of a front should always be holding the line rather than advancing at the enemy
NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 1
NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 1 	

NDefines.NAI.ASSIGN_FRONT_ARMY_SOFT_ATTACK_FACTOR = 0.1                 -- Importance of unit's ARMY_SOFT_ATTACK stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_ARMY_HARD_ATTACK_FACTOR = 0.1                -- Importance of unit's ARMY_HARD_ATTACK stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_ARMY_BREAKTHROUGH_FACTOR = 0.1               -- Importance of unit's ARMY_BREAKTHROUGH stat when assigning to a front
NDefines.NAI.ASSIGN_DEFENSE_ARMY_DEFENSE_FACTOR = 3.0                -- Importance of unit's ARMY_DEFENSE stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_ARMY_ENTRENCHMENT_FACTOR = 2.0              -- Importance of unit's ARMY_ENTRENCHMENT stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TEMPLATE_CLASS_SCORE = 3.0                  -- Importance of unit's AI template class (AREA_DEFENSE, CAVALRY) when assigning to an area defense order
NDefines.NAI.ASSIGN_INVASION_AMPHIBIOUS_ATTACK_FACTOR = 50.0            -- Importance of unit's amphibious attack adjuster when assigning to an invasion order
NDefines.NAI.ORDER_ASSIGNMENT_DISTANCE_FACTOR = 100.0                     -- When the AI assigns units to orders, how much should distance be taken into account?
NDefines.NAI.UNIT_ASSIGNMENT_STATS_IMPORTANCE = 2.0                     -- Stats score for units are multiplied by this when the AI is deciding which front they should be assigned to

NDefines.NAI.ASSIGN_FRONT_TERRAIN_ATTACK_FACTOR = 0.1                   -- Importance of unit's terrain adjusted attack stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_TERRAIN_DEFENSE_FACTOR = 0.1                 -- Importance of unit's terrain adjusted defense stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_TERRAIN_MOVEMENT_FACTOR = 0.1                 -- Importance of unit's terrain adjusted movement stat when assigning to a front
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_ATTACK_FACTOR = 0.5                 -- Importance of unit's terrain adjusted attack stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_DEFENSE_FACTOR = 4.0               -- Importance of unit's terrain adjusted defense stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_MOVEMENT_FACTOR = 0.5               -- Importance of unit's terrain adjusted movement stat when assigning to an area defense order

NDefines.NAI.ENEMY_FORTIFICATION_FACTOR_FOR_FRONT_REQUESTS = 1.0		-- front unit request factor at max enemy fortification
NDefines.NAI.ENEMY_FORTIFICATION_FACTOR_FOR_FRONT_REQUESTS_MAX = 0.1 	-- max factor that can be added by enemy fortification

NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.50
NDefines.NAI.FRONT_REASSIGN_DISTANCE = 250.0

NDefines.NAI.ASSIGN_TANKS_TO_MOUNTAINS = -10.0
NDefines.NAI.ASSIGN_TANKS_TO_JUNGLE = -10.0

NDefines.NAI.LAND_DEFENSE_FIGHERS_PER_PLANE = 2.0

NDefines.NAI.AREA_DEFENSE_BASE_IMPORTANCE = 4.0
--NDefines.NAI.STATE_CONTROL_FOR_AREA_DEFENSE = 0.70
--NDefines.NAI.DIVISION_SUPPLY_RATIO_TO_MOTORIZE = 1
NDefines.NAI.ENTRENCHMENT_WEIGHT = 5.0
NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 1.1
NDefines.NAI.MAX_MICRO_ATTACKS_PER_ORDER = 20
NDefines.NAI.MICRO_POCKET_SIZE = 5
NDefines.NAI.POCKET_DISTANCE_MAX = 6000


NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.0
NDefines.NAI.FRONT_UNITS_CAP_FACTOR = 13.0
NDefines.NAI.RAIDS_CREATE_FREQUENCY_DAYS = 20
NDefines.NAI.RAIDS_COMMAND_POWER_CAP_TO_CREATE = 150.0 
NDefines.NAI.COMMAND_POWER_BEFORE_SPEND_ON_TRAITS = 10.0
--NDefines.NAI.LOCATION_BALANCE_TO_ADVANCE = 0.15

NDefines.NAI.MIN_NUM_CONQUERED_PROVINCES_TO_DEPRIO_NAVAL_INVADED_FRONTS = 100

NDefines.NAI.MIN_INVASION_ORG_FACTOR_TO_EXECUTE = 0.8
NDefines.NAI.PLAN_FRONT_SECTION_MAX_LENGTH = 10
NDefines.NAI.PLAN_FRONT_SECTION_MIN_LENGTH = 5

NDefines.NAI.MAX_UNITS_FACTOR_FRONT_ORDER = 3.0
NDefines.NAI.DESIRED_UNITS_FACTOR_FRONT_ORDER = 3.0

NDefines.NAI.MIN_UNITS_FACTOR_FRONT_ORDER = 2.0
NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.3

NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.3
NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 1.2

NDefines.NAI.MANPOWER_RATIO_CAREFULNESS_THRESHOLD = 0.25	-- Vanilla 0.05 -- if manpower ratio (available/used-by-army) is less than this, start being more careful with plan execution (i.e. don't throw your men into the meat grinder if you're running out of manpower)

NDefines.NAI.DEFAULT_SUPPLY_TRUCK_BUFFER_RATIO = 2.0	-- -- Vanilla 1.5 -- ai will set to truck buffer ratio to this. can be modified by wanted_supply_trucks min_wanted_supply_trucks ai strats

NDefines.NAI.FORT_LEVEL_TO_CONSIDER_HIGHLY_FORTIFIED = 4

------ Changing Careful AI -----------

-- So I don't know a single person who actually uses the careful attack plan. Therefore i'm gonna heavily change it for the AI use.

NDefines.NAI.PLAN_EXECUTE_CAREFUL_LIMIT = 5                -- When looking for an attack target, this score limit is required in the battle plan to consider province for attack
NDefines.NAI.PLAN_EXECUTE_CAREFUL_MAX_FORT = 7				-- If execution mode is set to careful, units will not attack provinces with fort levels greater than or equal to this
NDefines.NAI.PLAN_EXECUTE_SUPPLY_CHECK = { 0.5, 0.4, 0.5, 1.0, 0.6 }
--                                                      ^^^ changed from 0.7
--------------------------------------------------------------------------------------------------------------
-- BATTLEPLANNER AI (KILL ME)
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.PLAN_PORVINCE_PORT_BASE_IMPORTANCE = 15.0	-- Vanilla 12.0		-- Added importance for area defense province with a port
NDefines.NMilitary.PLAN_PORVINCE_PORT_LEVEL_FACTOR = 2.5	-- Vanilla 1.5			-- Bonus factor for port level

NDefines.NMilitary.PLAN_PROVINCE_BASE_IMPORTANCE = 2.0	-- Vanilla 2.0

NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0 	-- Vanilla 3.0	-- Added importance for area defense province with air field
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_POPULATED_FACTOR = 1.5 	-- Vanilla 1.5	-- Bonus factor when an airfield has planes on it
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_LEVEL_FACTOR = 0.25		-- Bonus factor for airfield level
NDefines.NMilitary.PLAN_PORVINCE_RESISTANCE_BASE_IMPORTANCE = 10.0 -- Used when calculating the calue of defense area provinces for the battle plan system (factored by resistance level)

NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_UNIT_FACTOR = -1.5	-- Vanilla -2.0		-- Factor applied to province score in area defense order per enemy unit in that province
NDefines.NMilitary.PLAN_AREA_DEFENSE_FORT_IMPORTANCE = 0.30		-- Vanilla 0.25		-- Used when calculating the calue of defense area provinces for the battle plan system, works as multipliers on the rest
NDefines.NMilitary.PLAN_AREA_DEFENSE_COASTAL_FORT_IMPORTANCE = 5.0		-- Vanilla 3.0	-- Used when calculating the calue of defense area provinces for the battle plan system
NDefines.NMilitary.PLAN_AREA_DEFENSE_COAST_NO_FORT_IMPORTANCE = 2.0		-- Vanilla 1.1	-- Used when calculating the calue of defense area provinces for the battle plan system

NDefines.NMilitary.PLAN_STICKINESS_FACTOR = 90	-- Vanilla 100.0					-- downed from 100; Factor used in unitcontroller when prioritizing units for locations
		
NDefines.NMilitary.PLAN_BLITZ_OPTIMISM = 0.3	-- Vanilla 0.2; Additional combat balance value in favor of blitzing side when considering targets (not a combat bonus, just offsets planning)
NDefines.NMilitary.MIN_BALANCE_SCORE_TO_PROCEED_ATTACK = 0.15	-- Vanilla 0.2; A combat balance score of less than this will prevent auto attacking

NDefines.NMilitary.PLAN_SPREAD_ATTACK_WEIGHT = 300 -- 300.0 -- (was 12.0)	-- The higher the value, the less it should crowd provinces with multiple attacks.		#WICHTIG
NDefines.NMilitary.PLAN_MIN_AUTOMATED_EMPTY_POCKET_SIZE = 10		-- (was 2) -- The battle plan system will only automatically attack provinces in pockets that has no resistance and are no bigger than these many provinces
NDefines.NMilitary.FRONTLINE_EXPANSION_FACTOR = 0.0 -- #MOD was 0.0 -- was 0.6,				-- When attacking along a frontline, how much should units spread out as they advance. 0.0 means head (more or less) directly to the drawn frontline, with no distractions
NDefines.NMilitary.FRONT_MIN_PATH_TO_REDEPLOY = 4 --#MOD -- was 8,					-- If a units path is at least this long to reach its front location, it will strategically redeploy.

NDefines.NAI.PLAN_MIN_SIZE_FOR_FALLBACK = 25	-- Vanilla 50 -- A country with less provinces than this will not draw fallback plans, but rather station their troops along the front
NDefines.NAI.FALLBACK_LOSING_FACTOR = 2.0 		-- Vanilla 1.0 -- The lower this number, the longer the AI will hold the line before sending them to the fallback line

NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_AREA = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_AREA = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_AREA = 20.0
NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_FRONT = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_FRONT = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_FRONT = 8.0
NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_CONTROLLER_SCORE = 30.0
NDefines.NMilitary.PLAN_MAX_PROGRESS_TO_JOIN = 0.60

NDefines.NMilitary.PLAN_PROVINCE_PORT_BASE_IMPORTANCE = 15.0		-- increased from 9.0 ; Added importance for area defense province with a port
NDefines.NMilitary.PLAN_PROVINCE_PORT_LEVEL_FACTOR = 0.5			-- Bonus factor for port level
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0	-- Added importance for area defense province with air field
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_POPULATED_FACTOR = 1.5	-- Bonus factor when an airfield has planes on it
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_LEVEL_FACTOR = 0.25		-- Bonus factor for airfield level
NDefines.NMilitary.PLAN_PROVINCE_RESISTANCE_BASE_IMPORTANCE = 10.0 -- Used when calculating the calue of defense area provinces for the battle plan system (factored by resistance level)
---NDefines.NMilitary.PLAN_STICKINESS_IGNORE_STACK_LIMIT = 1			Unused -- 1 == yes, 0 == no. Alloes player to override prio to stack units where they want to.

NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_DEFENSE_IMPORTANCE = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_DEFENSE_IMPORTANCE = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_DEFENSE_IMPORTANCE = 20.0

--------------------------------------------------------------------------------------------------------------
-- NAVY AI
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.NAVAL_STRIKE_PLANES_PER_SHIP = 500
NDefines.NAI.NAVAL_SHIP_AIR_IMPORTANCE = 5
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_ESCORTING = 50
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_PATROLLING = 50

--------------------------------------------------------------------------------------------------------------
-- AIR AI
--------------------------------------------------------------------------------------------------------------
-------------------------
-- Land combat
-------------------------
NDefines.NAir.AI_ALLOWED_PLANES_KEPT_IN_RESERVE = 0.0

NDefines.NAI.LAND_COMBAT_OUR_COMBATS_AIR_IMPORTANCE = 150		-- Strategic importance of our armies in the combats
NDefines.NAI.LAND_COMBAT_CAS_PER_COMBAT = 110
NDefines.NAI.LAND_COMBAT_CAS_PER_ENEMY_ARMY = 20
NDefines.NAI.LAND_COMBAT_ANTI_LOGISTICS_PER_ENEMY_ARMY = 0.10

NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 3.00
NDefines.NAI.AI_FRACTION_OF_FIGHTERS_RESERVED_FOR_INTERCEPTION = 0
NDefines.NAI.LAND_COMBAT_FIGHTERS_PER_PLANE = 1.1
NDefines.NAI.LAND_COMBAT_AIR_SUPERIORITY_IMPORTANCE = 1
NDefines.NAI.LAND_COMBAT_FRIEND_ARMIES_AIR_IMPORTANCE = 5
NDefines.NAI.LAND_COMBAT_OUR_ARMIES_AIR_IMPORTANCE = 15
NDefines.NAI.LAND_COMBAT_ENEMY_COASTAL_FORTS_AIR_IMPORTANCE = 6
NDefines.NAI.LAND_DEFENSE_INTERCEPTORS_PER_BOMBERS = 1.4

NDefines.NAI.LAND_COMBAT_FRIEND_COMBATS_AIR_IMPORTANCE = 8
NDefines.NAI.LAND_COMBAT_ENEMY_LAND_FORTS_AIR_IMPORTANCE = 10
NDefines.NAI.LAND_COMBAT_BOMBERS_PER_COASTAL_FORT_LEVEL = 10

NDefines.NAI.LAND_COMBAT_IMPORTANCE_SCALE = 2.5

-------------------------
-- Defense
-------------------------
NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_BOMBERS = 1.0		-- Original = 1 Amount of air interceptor planes requested per enemy bomber
NDefines.NAI.LAND_DEFENSE_CIVIL_FACTORY_IMPORTANCE = 50 -- 50			-- Strategic importance of civil factories
NDefines.NAI.LAND_DEFENSE_MILITARY_FACTORY_IMPORTANCE = 70 -- 70		-- Strategic importance of military factories
NDefines.NAI.LAND_DEFENSE_NAVAL_FACTORY_IMPORTANCE = 30 -- 30			-- Strategic importance of naval factories

NDefines.NAI.AI_AIR_MISSION_COVERAGE_TO_STAY_PUT = 0.45		-- Vanilla 0.5 -- AI will not rebase air wings on missions if their new mission target exceeds this percentage of region coverage
NDefines.NAI.AIR_SCORE_DISTANCE_IMPACT = 0.0				-- Vanilla 0.3 -- -- Effect of distance applied to the score calculations
NDefines.NAI.DAYS_BETWEEN_AIR_PRIORITIES_UPDATE = 3		--- Vanilla 4 -- Amount of days between air ai updates priorities for air wings ( from 1 to N )

NDefines.NAI.LAND_DEFENSE_AIR_SUPERIORITY_IMPORTANCE = 0.8
NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_PLANE = 0
NDefines.NAI.LAND_DEFENSE_AA_IMPORTANCE_FACTOR = 1.0
NDefines.NAI.LAND_DEFENSE_INFRA_IMPORTANCE_FACTOR = 0.7

-------------------------
-- Str bombing
-------------------------
--NDefines.NAI.STR_BOMB_PLANES_PER_CIV_FACTORY = 100				-- Amount of planes requested per enemy civ factory
--NDefines.NAI.STR_BOMB_PLANES_PER_MIL_FACTORY = 100				-- Amount of planes requested per enemy military factory
--NDefines.NAI.STR_BOMB_PLANES_PER_NAV_FACTORY = 100				-- Amount of planes requested per enemy naval factory
--NDefines.NAI.STR_BOMB_PLANES_PER_SUPPLY_HUB = 30                 -- Amount of planes requested per enemy supply node
NDefines.NAI.STR_BOMB_AIR_SUPERIORITY_IMPORTANCE = 0.5
NDefines.NAI.STR_BOMB_FIGHTERS_PER_PLANE = 1.5

-------------------------
-- Naval air
-------------------------
NDefines.NAI.NAVAL_IMPORTANCE_SCALE = 1.2 --0.65						-- Naval total importance scale (every naval score get's multiplied by it)
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_RAIDING = 40 --10.0		-- Amount of naval patrol planes per ship on a convoy raid mission
NDefines.NAI.NAVAL_SHIP_AIR_IMPORTANCE = 2.0
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_RAIDING = 30.0
NDefines.NAI.NAVAL_COMBAT_TRANSFER_AIR_IMPORTANCE = 500.0

--------------------------------------------------------------------------------------------------------------
-- INTELLIGENCE AGENCY AI
--------------------------------------------------------------------------------------------------------------
NDefines.NOperatives.AGENCY_AI_BASE_NUM_FACTORIES = 10.0 --25.0
NDefines.NOperatives.AGENCY_AI_PER_UPGRADE_FACTORIES = 2.0 --6.0

--------------------------------------------------------------------------------------------------------------
-- AI SUPPLY/LOGISTICS DEFINES 
--------------------------------------------------------------------------------------------------------------
NDefines.NSupply.AI_FRONT_DIVISIONS_PER_SUPPLY_POINT = 0.85
NDefines.NAI.MAX_DIST_PORT_RUSH = 40.0	--default 20.0			-- If a unit is in enemy territory with no supply it will consider nearby ports within this distance.

NDefines.NAI.AVERAGE_SUPPLY_USE_PESSIMISM = 2.0  -- Increased multiplier to reflect realistic supply usage.

NDefines.NAI.MAX_SUPPLY_DIVISOR = 2  -- Vanilla 1.75						-- To make sure the AI does not overdeploy divisions. Higher number means more supply per unit. van 2.0

--------------------------------------------------------------------------------------------------------------
-- UNIT ASSIGNMENT & FRONT MANAGEMENT
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.REVISITED_PROV_BOOST_FACTOR = 6   -- Vanilla 4 --When the AI picks units for a front, it prioritises units already nearby.	
NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_IF_IN_COMBAT_FACTOR = 0.05 -- Vanilla 0.2	--Factor for reassigning to another front if in combat. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to.
NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_FACTOR = 0.3  -- Vanilla 0.5	--Factor for reassigning to another front. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to.	
NDefines.NAI.PLAN_VALUE_BONUS_FOR_MOVING_UNITS = 0.45	-- Vanilla 0.35  --AI plans gets a bonus when units are not moving and ready to fight
NDefines.NAI.PLAN_FRONTUNIT_DISTANCE_FACTOR	= 8.0	-- Vanilla 10.0  --Factor for candidate units distance to front positions.
NDefines.NAI.AI_PREFERRED_TACTIC_WEEKLY_CHANGE_CHANCE = 0.10	-- Vanilla 0.05	--Chance for AI to select a new preferred tactic if they don't have one selected

--------------------------------------------------------------------------------------------------------------
-- LEADER ASSIGNMENT
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.ARMY_LEADER_ASSIGN_EMPTYNESS_MALUS	= 0.3	-- Vanilla 0.2 ---Factor for avoiding assigning leaders that can lead large armies to small armies (a value of 0.2 reduces the score by max 20 %)
NDefines.NAI.ARMY_LEADER_ASSIGN_ARMY_ARMOR_SPEED_FACTOR	= 30.0	-- Vanilla 20.0 --Importance of general's ARMY_ARMOR_SPEED_FACTOR modifier (proportional to armor ratio in the army)	
NDefines.NAI.ARMY_LEADER_ASSIGN_ARMY_ARMOR_ATTACK_FACTOR = 30.0		-- Vanilla 20.0 ---Importance of general's ARMY_ARMOR_ATTACK_FACTOR modifier (proportional to armor ratio in the army)	
NDefines.NAI.ARMY_LEADER_ASSIGN_BOOST_ARMOR_SKILL = 25.0	-- Vanilla 20.0	---Importance of general's trait where armor skill is boosted, e.g. armor_officer which boosts panzer_leader (proportional to armor ratio in the army)	
NDefines.NAI.ARMY_LEADER_ASSIGN_ARMOR_LEADER_IF_NO_ARMOR = -1.0		-- Vanilla -0.5   ---Avoid assigning a general with armor skills to an army with no armor (can be negative)
NDefines.NAI.ARMY_LEADER_ASSIGN_AMPHIBIOUS_INVASION	= 6.0	 -- Vanilla 1.0 --If involved in invasion, importance of general's AMPHIBIOUS_INVASION modifier	
NDefines.NAI.ARMY_LEADER_ASSIGN_NAVAL_INVASION_PREPARATION = 6.0	-- Vanilla 1.0 --If involved in invasion, importance of general's NAVAL_INVASION_PREPARATION modifier
NDefines.NAI.ARMY_LEADER_ASSIGN_KEEP_CURRENT_LEADER_FACTOR = 2.0		-- Vanilla 1.2        -- Boosts the score for keeping the current leader. Value > 1.0 favors the current leader.
NDefines.NAI.ARMY_LEADER_ASSIGN_DONT_STEAL_OTHER_FACTOR = 0.25		-- Vanilla 0.75          -- Reduces the score for leaders assigned elsewhere. Value < 1.0 discourages reassigning these leaders.

--------------------------------------------------------------------------------------------------------------
-- AI FORCE CONCENTRATION DEFINES
--------------------------------------------------------------------------------------------------------------
-- AIFC stands for "AI Force Concentration". Using acronym to keep define names shorter.
NDefines.NAI.AIFC_UPDATE_FREQUENCY_DAYS = 4 	-- Vanilla 5                             -- How often will AI run its AI force concentration logic. Lowering this number may decrease performance.
NDefines.NAI.AIFC_FRESHNESS_BASE_VALUE = 35.0	-- Vanilla 45.0                           -- AIFC fronts have a "freshness value" which decreases if no progress is made. When it reaches zero, it will give up on the current target and try another.
NDefines.NAI.AIFC_REFRESH_NEED_PER_DAY = 1.0                         -- Decrease freshness value with this every day.
NDefines.NAI.AIFC_REFRESH_NEED_SUPPLY_FACTOR_PER_DAY = 4.0		-- Vanilla 0.8             -- Decrease freshness value with this multiplied by average supply ratio every day.
NDefines.NAI.AIFC_FRESHNESS_ADD_ON_PROGRESS = 20.0  -- Vanilla 25.0                    -- Increase freshness value with this when we advance a province along the target path.
NDefines.NAI.AIFC_UNIT_RATIO_BASE = 0.05	-- Vanilla 0.15           mod 0.10                     -- After fulfilling minimum front unit needs, this ratio of the "extra"/desired units can be allocated to AI force concentration duty
NDefines.NAI.AIFC_MAX_NR_FRONTS = 4                                     -- The X (this) fronts with highest AIFC score are considered for AI force concentration
NDefines.NAI.AIFC_CA_DIVISIONS_PER_PROVINCE = 2		-- Vanilla 3                     -- AI will use this as a baseline of how many divisions to have per province
NDefines.NAI.AIFC_ACTIVATE_AVG_ORG_RATIO_THRESHOLD = 0.6		-- Vanilla 0.2                -- Only activate the offensive order if average organisation is above this.
NDefines.NAI.AIFC_ACTIVATE_IN_POSITION_RATIO_THRESHOLD = 0.3	-- Vanilla 0.3            -- Only activate the offensive order if divisions in position is more than this ratio.
NDefines.NAI.AIFC_OFFENSIVE_DEACTIVATION_DAYS_THRESHOLD = 5             -- Deactivate the offensive order only if the conditions have been unfulfilled for this many days.
NDefines.NAI.AIFC_UNIT_NUDGE_FREQUENCY_DAYS = 10.0	-- Vanilla 15                      -- On average every X day (randomly), check if another division (within same front) is better for AIFC based on score factors below.
	-- Unit offensiveness score factors for AIFC. Division stats are factored by this before adding up to total score.
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_BREAKTHROUGH = 12.0	-- Vanilla 11.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_SOFT_ATTACK = 12.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HARD_ATTACK = 16.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ARMOR = 80.0   -- Heavy incentive for Panzers
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_PIERCING = 8.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HARDNESS = 800.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_SPEED = 15.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_INITIATIVE = 5.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ORGANISATION = 1.0    -- Slightly positive: no more AI using garbage
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HITPOINTS = 0.5
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_DEFENSE = -0.2
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ENTRENCHMENT = -0.5
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_EXPERIENCE = 500.0
	-- End of unit offensiveness score factors for AIFC
	-- Strategic target scoring for AIFC
NDefines.NAI.AIFC_TARGET_IGNORE_VP_THRESHOLD = 10                       -- VP target needs at leas this many victory points to be considered a target
NDefines.NAI.AIFC_TARGET_SUPPLY_HUB_BASE_SCORE = 25	-- Vanilla 200                   -- Base score for supply hubs
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_BASE_SCORE = 15.0                   -- Base score for naval bases
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_SCORE_PER_LEVEL = 2.0               -- Score for naval bases increases by this for each level
NDefines.NAI.AIFC_TARGET_VP_SCORE_FACTOR = 1.0                          -- Score for VPs increases by this for every victory point
NDefines.NAI.AIFC_TARGET_CAPITAL_SCORE_EXTRA = 10.0		-- Vanilla 5.0                   -- Extra score for Capitals (in addition to VP score)
NDefines.NAI.AIFC_TARGET_SHORT_PATH_PENALTY_FACTOR = 0.0                -- Penalty factor for short AIFC paths (path <= 3 (including own start province))
NDefines.NAI.AIFC_TARGET_PERSISTED_FACTOR = 35.0   		-- Vanilla 30.0                     -- Bonus factor for persisted targets (used to incentivize AI to select target again after e.g. front lines have reformed or save file is loaded)
	-- End of strategic target scoring for AIFC
	
	-- Offensive path scoring (cost multipliers) for AIFC
NDefines.NAI.AIFC_PATH_MAX_COST = 5.0	-- Vanilla 7.0                                  -- Only allow paths with total cost <= this. WARNING: increasing this value may cause stuttering and other performance issues (since AIFC will evaluate larger areas)
NDefines.NAI.AIFC_PATH_COST_ADJ_NORMAL = 1.0
NDefines.NAI.AIFC_PATH_COST_ADJ_STRAIT = 4.0
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER = 1.5
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER_LARGE = 2.3
NDefines.NAI.AIFC_PATH_COST_TRN_MOUNTAINS = 2.5		-- Vanilla 2.0
NDefines.NAI.AIFC_PATH_COST_TRN_FOREST = 1.15
NDefines.NAI.AIFC_PATH_COST_TRN_DESERT = 1.5
NDefines.NAI.AIFC_PATH_COST_TRN_HILLS = 1.2
NDefines.NAI.AIFC_PATH_COST_TRN_JUNGLE = 3.5 		-- Vanilla 3.0
NDefines.NAI.AIFC_PATH_COST_TRN_PLAINS = 1.0		-- Vanilla 0.8
NDefines.NAI.AIFC_PATH_COST_TRN_URBAN = 0.8
NDefines.NAI.AIFC_PATH_COST_TRN_MARSH = 2.5
NDefines.NAI.AIFC_PATH_COST_PER_FORT_LEVEL = 0.4                        -- This multiplier is calculated as: 1.0 + <define>*fort_level    (only for fort levels > 0)
NDefines.NAI.AIFC_PATH_COST_HAS_SUPPLY_HUB = 0.50	-- Vanilla 0.5                        -- If the province we're entering has a supply hub
NDefines.NAI.AIFC_PATH_COST_HAS_NAVAL_BASE = 0.25	-- Vanilla 0.5                         -- If the province we're entering has a naval base
NDefines.NAI.AIFC_PATH_COST_RAILWAY_CONNECTION = 0.70	-- Vanilla 0.75                  -- If the provinces are connected by a railway with level > 0
	-- End of offensive path scoring for AIFC

-------------------------------------------------------------------------------------------------------------------------------------------------
-- AMINE'S PERSONAL TEST DEFINES
-------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------
------ Fort Behavior, Front Cohesion, War Readiness -----------
--------------------------------------
NDefines.NAI.DECLARE_WAR_MIN_FRONT_SIZE_TO_CONSIDER_FOR_NOT_READY = 0.08    -- vanilla 0.04
NDefines.NAI.MIN_FRONT_SIZE_TO_CONSIDER_STANDARD_COHESION = 12              -- vanilla 8
NDefines.NAI.FORTIFIED_MIN_ORG_FACTOR_TO_CONSIDER_A_FRONT_FORTIFIED = 0.55  -- vanilla 0.45
NDefines.NAI.PLAN_VALUE_FORTIFICATION_LEVEL_MAX_PENALTY = 0.85              -- vanilla 1.0
NDefines.NAI.AREA_DEFENSE_IMPORTANCE_FACTOR = 1.35                          -- vanilla 1.0

--------------------------------------
------ Supply-Aware AI & Training Sanity -----------
--------------------------------------
NDefines.NAI.DEFAULT_SUPPLY_TRAIN_NEED_FACTOR = 1.15          -- vanilla 1.0
NDefines.NAI.START_TRAINING_SUPPLY_LEVEL = 0.55               -- vanilla 0.40
NDefines.NAI.STOP_TRAINING_SUPPLY_LEVEL = 0.45                -- vanilla 0.30
NDefines.NAI.MIN_SUPPLY_USE_SANITY_CAP = 150                  -- vanilla 100
NDefines.NAI.STR_BOMB_SUPPLY_HUB_IMPORTANCE = 20              -- vanilla 10

--------------------------------------
------ Combat Evaluation / Targeting Logic -----------
--------------------------------------
NDefines.NMilitary.COMBAT_VALUE_ORG_IMPORTANCE = 1.1     -- vanilla 1
NDefines.NMilitary.COMBAT_VALUE_STR_IMPORTANCE = 1.0      -- vanilla 1
NDefines.NMilitary.SOFT_ATTACK_TARGETING_FACTOR = 1.15    -- vanilla 1.0
NDefines.NMilitary.HARD_ATTACK_TARGETING_FACTOR = 1.35    -- vanilla 1.2

--------------------------------------
------ Theatre Generation, Merging & Unit Distribution -----------
--------------------------------------
NDefines.NAITheatre.AI_THEATRE_AI_FRONT_MIN_DESIRED_RATIO = 0.65         -- vanilla 0.5
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_MAX_SCORE = 2.4              -- vanilla 2.0
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_PERCENTAGE_OF_MINIMUM_UNITS_TO_KEEP = 0.35  -- vanilla 0.25
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_SAME_THEATRE_SCORE_MODIFIER = 0.35          -- vanilla 0.25

NDefines.NAITheatre.AI_THEATRE_GENERATION_MINIMUM_STATE_COUNT = 4        -- vanilla 3
NDefines.NAITheatre.AI_THEATRE_GENERATION_MAX_DISTANCE_TO_MERGE = 250   -- vanilla 200
NDefines.NAITheatre.AI_THEATRE_BREAKDOWN_MAX_DISTANCE_TO_MERGE = 350    -- new, consistent with above
NDefines.NAITheatre.AI_THEATRE_GENERATION_BORDER_SIZE_RESTRICTION = 9    -- vanilla 7

--------------------------------------
------ Air Logic -----------
--------------------------------------
NDefines.NAI.AIR_SUPERIORITY_FACTOR = 2.0                 -- vanilla 1.5
NDefines.NAI.AIR_SUPERIORITY_FOR_FRIENDLY_CAS_RATIO = 0.65 -- vanilla 0.5
NDefines.NAI.MAX_AIR_REGIONS_TO_CARE_ABOUT = 10            -- vanilla 5
NDefines.NAI.LAND_COMBAT_ENEMY_ARMIES_AIR_IMPORTANCE = 8  -- vanilla 10
NDefines.NAI.LAND_DEFENSE_MIN_FACTORIES_FOR_AIR_IMPORTANCE = 12 -- vanilla 8

NDefines.NAI.NAVAL_AIR_SUPERIORITY_IMPORTANCE = 4.0        -- vanilla 3.0
NDefines.NAI.NAVAL_COMBAT_AIR_IMPORTANCE = 20              -- vanilla 15
NDefines.NAI.NAVAL_SHIP_IN_PORT_AIR_IMPORTANCE = 12        -- vanilla 8

--------------------------------------
------ Macro-Strategy: Guarantees, Calling Allies, War Entry ----------
--------------------------------------
NDefines.NAI.DAYS_FUEL_REMAINING_TO_ENTER_FUEL_SAVING_MODE = 10
--NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_NAVY_TRAINING = 0.60
NDefines.NAI.TRADEABLE_FACTORIES_FRACTION = 1.0	

NDefines.NAI.RESOURCE_WANT_PER_MISSING_BALANCE = 1.0
NDefines.NAI.RESOURCE_WANT_PER_CONSUMED = 0.15

--------------------------------------
------ Supply & Front Deployment (NSupply) -----------
--------------------------------------
NDefines.NSupply.AI_FRONT_MAX_UNITS_ENEMY_COUNT_FACTOR = 1.05     -- vanilla 1.2
NDefines.NSupply.AI_FRONT_MINIMUM_UNITS_PER_PROVINCE_FOR_SUPPLY_CALCULATIONS = 0.8 -- vanilla 1.0
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_MAX_PERCENT_UNMET_DEMAND_PER_FRONT = 0.1   -- Percentage of how much fronts should request from other lower priority fronts, 0 means once a front gets hold of a unit it stays there forever until its demand is reduced, controlls shuffling of units.
NDefines.NAITheatre.AI_THEATRE_SUPPLY_CRISIS_LIMIT = 0.25

--------------------------------------
------ Construction AI -----------
--------------------------------------
NDefines.NAI.BUILDING_TARGETS_BUILDING_PRIORITIES = { 'arms_factory', 'industrial_complex', 'air_base', 'supply_node', 'rail_way', 'naval_base', 'bunker', 'coastal_bunker', 'anti_air_building', 'synthetic_refinery', 'fuel_silo', 'radar_station', 'rocket_site', }
	
NDefines.NAI.CONSTRUCTION_PRIO_SUPPLY_BUILDING = 3.50
NDefines.NAI.CONSTRUCTION_PRIO_RAILWAY = 20.0
NDefines.NAI.CONSTRUCTION_PRIO_FACTOR_OWNED_CORE = 5.0
NDefines.NAI.CONSTRUCTION_PRIO_FACTOR_OWNED_NONCORE = 3.0

--- AI – Fuel & Trade Decisions
NDefines.NAI.MAX_FACTORY_TO_SPARE_FOR_MISSION_FUEL_TRADE = 0.5
NDefines.NAI.MAX_FACTORY_TO_SPARE_FOR_CRITICAL_MISSION_FUEL_TRADE = 0.5
NDefines.NAI.MAX_FACTORY_TO_TRADE_FOR_FUEL = 0.6
NDefines.NAI.FUEL_TRADE_PRIO_FOR_CONVOY_DEFENSE = 1
NDefines.NAI.MAX_FACTORY_TO_SPARE_FOR_MISSION_FUEL_TRADE_IN_PEACE = 0.6
NDefines.NAI.MAX_FACTORY_TO_SPARE_FOR_CRITICAL_MISSION_FUEL_TRADE_IN_PEACE = 0.6
NDefines.NAI.MAX_FACTORY_TO_TRADE_FOR_FUEL_IN_PEACE = 0.6
NDefines.NAI.FUEL_CONSUMPTION_MULT_FOR_FUEL_SAVING_MODE = 0.30
NDefines.NAI.FUEL_CONSUMPTION_MULT_REGULAR_FUEL_MODE = 1
NDefines.NAI.FUEL_CONSUMPTION_MULT_AGRESSIVE_FUEL_MODE = 6.0
--NDefines.NAI.DAYS_FUEL_REMAINING_TO_ENTER_FUEL_SAVING_MODE = 60
NDefines.NAI.DAYS_FUEL_REMAINING_TO_ENTER_FUEL_SAVING_MODE_FUEL_RATIO = 0.33
NDefines.NAI.FUEL_RATIO_TO_EXIST_FUEL_SAVING_MODE = 0.5

--- AI – Lend Lease & Air Wing Requests

NDefines.NAI.LAND_COMBAT_CAS_PLANES_PER_ENEMY_ARMY_LIMIT = 300
NDefines.NAI.LAND_COMBAT_BOMBERS_PER_LAND_FORT_LEVEL = 10
NDefines.NAI.LAND_COMBAT_MIN_EXCORT_PLANES = 200
NDefines.NAI.LAND_COMBAT_INTERCEPT_PER_PLANE = 1
NDefines.NAI.MIN_ALLIED_DEFENSE_FACTOR_AIRWING_REQUESTS = 0.07
NDefines.NAI.LAND_COMBAT_GUIDE_DISTANCE = 290.0
NDefines.NAI.STR_BOMB_MIN_EXCORT_PLANES = 200
NDefines.NAI.STR_BOMB_MIN_ENEMY_FIGHTERS_IN_AREA = 600