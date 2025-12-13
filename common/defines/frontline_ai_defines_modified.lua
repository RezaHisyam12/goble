-------------------------------------------------------------------------------------------------------------------------------------------------
-- FRONTLINE AI
-------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------
-- AGGRESSIVENESS
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.AGGRESSIVENESS_CHECK_BASE = 1.4               -- Encourages more aggressive stance overall
NDefines.NAI.AGGRESSIVENESS_CHECK_EASY_TARGET = -0.7       -- Makes AI take bigger risks vs weak nations
NDefines.NAI.AGGRESSIVENESS_CHECK_CAREFUL = 0.65            -- More willing to stop being cautious
NDefines.NAI.AGGRESSIVENESS_CHECK_PARTLY_FORTIFIED = 1.8  -- Requires less strength to attempt balanced attack
NDefines.NAI.AGGRESSIVENESS_CHECK_PARTLY_FORTIFIED_WEAK_POINTS = 0.6 -- Encourages exploiting weaknesses more
NDefines.NAI.AGGRESSIVENESS_CHECK_FULLY_FORTIFIED = 8.0    -- Less conservative vs strongholds
NDefines.NAI.AGGRESSIVENESS_CHECK_FULLY_FORTIFIED_POCKET = 3.0 -- Pushes AI to kill off encircled enemies sooner

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

--------------------------------------------------------------------------------------------------------------
-- DESIGNS
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_LAND = 20 --50	-- Army XP needed before attempting to create a variant of a type that uses the tank designer (the tank designer DLC feature must be active).
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_NAVY = 20 --50	-- Same as above but for the ship designer.
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_AIR = 20 --25	-- Same as above but for the air designer.

NDefines.NAI.VARIANT_CREATION_XP_RESERVE_LAND = 30 --50					-- If the AI lacks army XP to create a variant it will reserve this much XP for variant creation so that it will eventually be able to create a variant.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_NAVY = 30 --50					-- Same as above but for navy XP.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_AIR  = 30 --50					-- Same as above but for air XP.

-- The AI "desires" to spend XP on doctrines, templates, and equipment.
-- The desire is built up over time and when XP is available it spends it on the action that has the highest accumulated desire. After spending XP the desire is reset, in effect balancing the desires.
-- Below is the daily desire gain for each action.


NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_LAND_DOCTRINE = 10.0  ---0.5    -- How quickly is desire to unlock land doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVAL_DOCTRINE = 0.5  ---1   -- How quickly is desire to unlock naval doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_DOCTRINE = 0.5  ---1     -- How quickly is desire to unlock air doctrines accumulated?

--EAI: make sure land template desire is always at the top, if the doctrine desire is high but the mod blocks it, AI wont create templates
NDefines.NAI.DESIRE_USE_XP_TO_UPDATE_LAND_TEMPLATE = 100.0    -- How quickly is desire to update/create templates accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_LAND_EQUIPMENT = 50.0  -- How quickly is desire to update/create land equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_NAVAL_EQUIPMENT = 1.0  --100.0 -- How quickly is desire to update/create naval equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_AIR_EQUIPMENT = 100.0   -- How quickly is desire to update/create air equipment variants accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_ARMY_SPIRIT = 0.4    -- How quickly is desire to unlock army spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVY_SPIRIT = 0.4   -- How quickly is desire to unlock naval spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_SPIRIT = 0.4     -- How quickly is desire to unlock air spirits accumulated?

NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_DOCTRINE = 7       -- Recalculate desired best doctrine to unlock with this many days inbetween.
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_TEMPLATE = 7       -- Recalculate desired best template to upgrade with this many days inbetween.
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_EQUIPMENT = 7      -- Recalculate desired best equipment to upgrade with this many days inbetween.

NDefines.NAI.GARRISON_TEMPLATE_SCORE_IC_FACTOR = 1.0 -- ai uses these defines while calculating garrison template score of a template.
NDefines.NAI.GARRISON_TEMPLATE_SCORE_MANPOWER_FACTOR = 0.05 -- formula is (template_ic * ic_factor + template_manpower * manpower_factor ) / template_supression (lower is better)

--------------------------------------------------------------------------------------------------------------
-- FUEL
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_ARMY_MAX_CONSUMPTION = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer 
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_AIR_MAX_CONSUMPTION  = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_NAVY_MAX_CONSUMPTION = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer

--------------------------------------------------------------------------------------------------------------
-- LAND AI
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.LAND_DEFENSE_SUPPLY_HUB_IMPORTANCE = 200

NDefines.NAI.ASSIGN_TANKS_TO_WAR_FRONT = 10.0 -- Vanilla 6.0
NDefines.NAI.ASSIGN_TANKS_TO_NON_WAR_FRONT = -10.0 -- Vanilla 0.4

NDefines.NAI.UPDATE_SUPPLY_MOTORIZATION_FREQUENCY_HOURS = 20 				-- Vanilla is 52  Check if activating motorization would improve supply situation this often.

NDefines.NAI.AREA_DEFENSE_CIVIL_WAR_IMPORTANCE = 5.0				-- Area defense order importance value when a country is in a civil war as target or revolter. vanilla 10000 lolwut?? am I missing something here :

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

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.60				            -- Minimum org % for a unit to actively attack an enemy unit when executing a plan
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.65 --0.4			        -- Minimum strength for a unit to actively attack an enemy unit when executing a plan

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.55							-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.6	

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.45		
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.55	

NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.5 --0.80	--0.60		        -- % or more of units in an order to consider ececuting the plan
--NDefines.NAI.PLAN_FACTION_NORMAL_TO_EXECUTE = 0.65  --0.50
--NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.50  --0.35 		0.65		        -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.PLAN_VALUE_TO_EXECUTE = -0.4     -- Vanilla -0.5                                     -- AI will typically avoid carrying out a plan it below this value (0.0 is considered balanced).
NDefines.NAI.PLAN_AVG_PREPARATION_TO_EXECUTE = 0.4				            -- % or more average plan preparation before executing

NDefines.NAI.FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.35
NDefines.NAI.HEAVILY_FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.5

NDefines.NAI.PLAN_ACTIVATION_SUPERIORITY_AGGRO = 2.0 --default 1.0		-- How aggressive a country is in activating a plan based on how superiour their force is.

NDefines.NAI.DYNAMIC_STRATEGIES_THREAT_FACTOR = 8.0
NDefines.NAI.BASE_DISTANCE_TO_CARE = 400.0

NDefines.NAI.ASSIGN_MOUNTAINEERS_TO_MOUNTAINS = 50.0

NDefines.NAI.ORG_UNIT_STRONG = 0.75
NDefines.NAI.STR_UNIT_STRONG = 0.75
NDefines.NAI.PLAN_FACTION_NORMAL_TO_EXECUTE = 0.65
NDefines.NAI.ORG_UNIT_NORMAL = 0.6
NDefines.NAI.STR_UNIT_NORMAL = 0.6
NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.45
NDefines.NAI.ORG_UNIT_WEAK = 0.35
NDefines.NAI.STR_UNIT_WEAK = 0.35

-- Garrison AI
NDefines.NAI.AREA_DEFENSE_SETTING_VP = false								-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_PORTS = true								-- Vanilla is true
NDefines.NAI.AREA_DEFENSE_SETTING_AIRBASES = false							-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_BORDERS = false							-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_FORTS = false								-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_COASTLINES = false						        -- Vanilla is true
NDefines.NAI.AREA_DEFENSE_SETTING_RAILWAYS = false							-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_FACILITY = false							-- Vanilla is false                  

--------------------------------------------------------------------------------------------------------------
-- NAVY AI
--------------------------------------------------------------------------------------------------------------

-------------------------
-- naval invasions
-------------------------

NDefines.NAI.MIN_INVASION_AREA_SIZE_FOR_FLOATING_HARBORS = 1   -- AI will consider using floating harbors for naval invasion if invasion area is larger than this many provinces
NDefines.NAI.MAX_DISTANCE_NAVAL_INVASION = 200.0				-- AI is extremely unwilling to plan naval invasions above this naval distance limit.

NDefines.NAI.INVASION_TARGET_DISTANCE_DENOMINATOR = 500	-- Vanilla 1000            -- When selecting invasion target, divide this with (pixel) distance to get distance score factor. (Doesn't really affect the relative scoring, but it affects the linearity of the score function.)
NDefines.NAI.INVASION_TARGET_NO_PORT_FACTOR = 0.1	-- Vanilla 0.3                   -- When selecting invasion target, multiply score with this if the target has no port
NDefines.NAI.INVASION_TARGET_TRUNCATION_SELECT_THRESHOLD = 0.9	-- Vanilla 0.6      -- When selecting invasion target, use this threshold for truncation selection. (1.0 means select highest scored target, 0.0 means select randomly from all possible target, 0.5 means select randomly from all targets with more than 50 % of highest score)
NDefines.NAI.INVASION_TARGET_PRIO_NOT_ENEMY_FACTOR = 0.15	-- Vanilla 0.17           -- When calculating priority for an invasion, factor the score with this if the target is not an actual enemy.

NDefines.NAI.FAILED_INVASION_AREA_PRIO_FACTOR = 0.25 ---for every failed invasion on an area, factor that area's invasion prio with this value	
NDefines.NAI.FAILED_INVASION_PORT_PRIO_FACTOR = 0.33 ---for every failed invasion on a target port (province), factor the chance that we try to invade that same port again (relative to other ports)

NDefines.NAI.MAX_INVASION_FRONT_SCORE = 2400										-- max score for naval invasion front scores
NDefines.NAI.MIN_FRONT_SCORE_FOR_AFTER_INVASION_AREAS = 1800						-- min score for army fronts that are created on recently invaded regions
NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 28									-- AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this)
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_DURATION = 90									-- after successful invasion, AI will prio the enemy area for this number of days
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_MULT = 6									-- fronts that belongs to recent invasions gets more prio

--------------------------------------------------------------------------------------------------------------
-- INTELLIGENCE AGENCY AI
--------------------------------------------------------------------------------------------------------------

-- Used by AI to pace the upgrades. 
-- Formula : if( AGENCY_AI_BASE_NUM_FACTORIES <= num_civ_factories - num_upgrades * AGENCY_AI_PER_UPGRADE_FACTORIES )

NDefines.NOperatives.AGENCY_AI_BASE_NUM_FACTORIES = 10.0 --25.0
NDefines.NOperatives.AGENCY_AI_PER_UPGRADE_FACTORIES = 2.0 --6.0

--------------------------------------------------------------------------------------------------------------
-- AI SUPPLY/LOGISTICS DEFINES 
--------------------------------------------------------------------------------------------------------------

NDefines.NSupply.AI_FRONT_DIVISIONS_PER_SUPPLY_POINT = 0.85
NDefines.NAI.MAX_DIST_PORT_RUSH = 40.0	--default 20.0			-- If a unit is in enemy territory with no supply it will consider nearby ports within this distance.

NDefines.NAI.AVERAGE_SUPPLY_USE_PESSIMISM = 2.0  -- Increased multiplier to reflect realistic supply usage.

NDefines.NAITheatre.FRONT_EVAL_UNIT_SUPPLY_AND_ORG_LACK_IMPACT = 1.5	-- Vanilla 1.0; scale how painful the AI thinks a combined lack of supply and organization is for units	

NDefines.NAI.MAX_SUPPLY_DIVISOR = 2  -- Vanilla 1.75						-- To make sure the AI does not overdeploy divisions. Higher number means more supply per unit. van 2.0

--------------------------------------------------------------------------------------------------------------
-- BITMODE AI CONCENTRATION TEST
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.GARRISON_FRACTION = 0.1					-- How large part of a front should always be holding the line rather than advancing at the enemy

--NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 1
--NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 1 	

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

NDefines.NMilitary.PLAN_STICKINESS_FACTOR = 95.0	-- Vanilla 100.0					-- downed from 100; Factor used in unitcontroller when prioritizing units for locations
NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_MAX_FORT = 4	-- Vanilla 5				-- reduced from 5 ; If execution mode is set to careful, units will not attack provinces with fort levels greater than or equal to this
		
NDefines.NMilitary.PLAYER_ORDER_PLANNING_DECAY = 0.01	-- 0.3; Amount of planning lost due to player manual order

NDefines.NMilitary.PLAN_BLITZ_OPTIMISM = 0.3	-- Vanilla 0.2; Additional combat balance value in favor of blitzing side when considering targets (not a combat bonus, just offsets planning)
NDefines.NMilitary.MIN_BALANCE_SCORE_TO_PROCEED_ATTACK = 0.25	-- Vanilla 0.2; A combat balance score of less than this will prevent auto attacking
--------------------------------------------------------------------------------------------------------------
-- UNIT ASSIGNMENT & FRONT MANAGEMENT
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.REVISITED_PROV_BOOST_FACTOR = 6   -- Vanilla 4 --When the AI picks units for a front, it prioritises units already nearby.	

NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_IF_IN_COMBAT_FACTOR = 0.05 -- Vanilla 0.2	--Factor for reassigning to another front if in combat. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to.
NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_FACTOR = 0.3  -- Vanilla 0.5	--Factor for reassigning to another front. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to.	

NDefines.NAI.FRONT_EVAL_UNIT_ACCURACY = 1.0	-- Vanilla 1.0										-- scale how stupid ai will act on fronts. 0 is potato
NDefines.NAI.PLAN_VALUE_BONUS_FOR_MOVING_UNITS = 0.25	-- Vanilla 0.35  --AI plans gets a bonus when units are not moving and ready to fight

NDefines.NAI.PLAN_FRONTUNIT_DISTANCE_FACTOR	= 8.5	-- Vanilla 10.0  --Factor for candidate units distance to front positions.
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

--------------------------------------------------------------------------------------------------------------
-- NEW SNOOPY DEFINES
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.MIN_AI_SCORE_TO_ECONOMY_LAW_OVERRIDE_HARD_CODED_SCORE = -100.0
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_MAX_PERCENT_UNMET_DEMAND_PER_FRONT = 0.1   -- Percentage of how much fronts should request from other lower priority fronts, 0 means once a front gets hold of a unit it stays there forever until its demand is reduced, controlls shuffling of units.

NDefines.NAI.WANTED_UNITS_MAX_WANTED_CAP = 1000
NDefines.NAI.CONSTRUCTION_PRIO_INFRASTRUCTURE = 30                 -- 优先基建
NDefines.NAI.CONSTRUCTION_PRIO_CIV_FACTORY = 1                     -- 其次修民
NDefines.NAI.CONSTRUCTION_PRIO_FACTOR_REPAIRING = 0                        -- 维修？做梦！
NDefines.NAI.MIN_DELIVERED_TRADE_FRACTION = 0.7               -- 别老是取消路线   

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


NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_AREA = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_AREA = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_AREA = 20.0
NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_FRONT = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_FRONT = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_FRONT = 8.0
NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_CONTROLLER_SCORE = 30.0
NDefines.NMilitary.PLAN_MAX_PROGRESS_TO_JOIN = 0.60

-- Addition with 1.3.2
NDefines.NMilitary.PLAN_PROVINCE_PORT_BASE_IMPORTANCE = 15.0		-- increased from 9.0 ; Added importance for area defense province with a port
NDefines.NMilitary.PLAN_PROVINCE_PORT_LEVEL_FACTOR = 0.5			-- Bonus factor for port level
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0	-- Added importance for area defense province with air field
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_POPULATED_FACTOR = 1.5	-- Bonus factor when an airfield has planes on it
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_LEVEL_FACTOR = 0.25		-- Bonus factor for airfield level
NDefines.NMilitary.PLAN_PROVINCE_RESISTANCE_BASE_IMPORTANCE = 10.0 -- Used when calculating the calue of defense area provinces for the battle plan system (factored by resistance level)

NDefines.NMilitary.PLAN_STICKINESS_IGNORE_STACK_LIMIT = 1			-- 1 == yes, 0 == no. Alloes player to override prio to stack units where they want to.

-- END

NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.2
NDefines.NAI.FRONT_REASSIGN_DISTANCE = 250.0

--------------------------------------------------------------------------------------------------------------
-- RIKAI BATTLEPLANNER DEFINES
--------------------------------------------------------------------------------------------------------------

NDefines.NMilitary.PLAN_SPREAD_ATTACK_WEIGHT = 200-- 1.0 -- (was 12.0)	-- The higher the value, the less it should crowd provinces with multiple attacks.		#WICHTIG
NDefines.NMilitary.PLAN_MIN_AUTOMATED_EMPTY_POCKET_SIZE = 15		-- (was 2) -- The battle plan system will only automatically attack provinces in pockets that has no resistance and are no bigger than these many provinces
NDefines.NMilitary.FRONTLINE_EXPANSION_FACTOR = 0.0 -- #MOD -- was 0.6,				-- When attacking along a frontline, how much should units spread out as they advance. 0.0 means head (more or less) directly to the drawn frontline, with no distractions
NDefines.NMilitary.FRONT_MIN_PATH_TO_REDEPLOY = 4 --#MOD -- was 8,					-- If a units path is at least this long to reach its front location, it will strategically redeploy.

NDefines.NAI.PLAN_STEP_COST_LIMIT = 15
NDefines.NAI.PLAN_ATTACK_DEPTH_FACTOR = 0.1
NDefines.NAI.MIN_AI_UNITS_PER_TILE_FOR_STANDARD_COHESION = 2.0

NDefines.NAI.FRONT_CUTOFF_MIN_EDGE_PROXIMITY = 3
NDefines.NAI.FRONT_BULGE_RATIO_LOWER_CUTOFF = 1.1
NDefines.NAI.FRONT_BULGE_RATIO_UPPER_CUTOFF = 1.4


-------------------------------------------------------------------------------------------------------------------------------------------------
-- SHEEP AI
-------------------------------------------------------------------------------------------------------------------------------------------------

------
------
------------

------Diplomacy, Country, Balancing------
NDefines.NAI.DAYS_FUEL_REMAINING_TO_ENTER_FUEL_SAVING_MODE = 10
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_NAVY_TRAINING = 0.60

------Construction------
NDefines.NAI.BUILDING_TARGETS_BUILDING_PRIORITIES = {
		'infrastructure',
		'nuclear_reactor',
		'nuclear_reactor_heavy_water',
		'synthetic_refinery',
		'dockyard',
		'industrial_complex',
	}
NDefines.NAI.CONSTRUCTION_PRIO_SUPPLY_BUILDING = 3.50
NDefines.NAI.CONSTRUCTION_PRIO_RAILWAY = 20.0
NDefines.NAI.CONSTRUCTION_PRIO_FACTOR_OWNED_CORE = 5.0
NDefines.NAI.CONSTRUCTION_PRIO_FACTOR_OWNED_NONCORE = 3.0
------Technology------
NDefines.NAI.RESEARCH_AHEAD_BONUS_FACTOR = 10.0
NDefines.NAI.RESEARCH_BONUS_FACTOR = 2.0
--NDefines.NAI.RESEARCH_BASE_DAYS = 1000

------Training------
NDefines.NAI.DEPLOY_MIN_TRAINING_SURRENDER_FACTOR = 0.4
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_SURRENDER_FACTOR = 0.8 
NDefines.NAI.DEPLOY_MIN_TRAINING_PEACE_FACTOR = 1
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.9
NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.7
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.7
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_CAP_DEPLOY_FACTOR = 0.85
NDefines.NAI.WANTED_UNITS_THREAT_MAX = 25.0

NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 1
NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 1
NDefines.NAI.STOP_TRAINING_FULLY_TRAINED_FACTOR = 0.99
NDefines.NAI.UPGRADES_DEFICIT_LIMIT_DAYS = 60
NDefines.NAI.LOW_PRIO_TEMPLATE_BONUS_FOR_GARRISONS = 300000
NDefines.NAI.LOW_PRIO_TEMPLATE_PENALTY_FOR_FRONTS = -2000



----Battleplanning----

NDefines.NAI.ASSIGN_TANKS_TO_MOUNTAINS = -10.0
NDefines.NAI.ASSIGN_TANKS_TO_JUNGLE = -10.0

NDefines.NAI.RESERVE_TO_COMMITTED_BALANCE = 0.3
NDefines.NAI.LAND_DEFENSE_FIGHERS_PER_PLANE = 2.0

NDefines.NAITheatre.AI_THEATRE_SUPPLY_CRISIS_LIMIT = 0.25

NDefines.NAI.AREA_DEFENSE_BASE_IMPORTANCE = 30
--NDefines.NAI.STATE_CONTROL_FOR_AREA_DEFENSE = 0.70
NDefines.NAI.FALLBACK_LOSING_FACTOR = 0.2
NDefines.NAI.DIVISION_SUPPLY_RATIO_TO_MOTORIZE = 1
NDefines.NAI.ENTRENCHMENT_WEIGHT = 5.0
NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 0.8
NDefines.NAI.MAX_MICRO_ATTACKS_PER_ORDER = 12
NDefines.NAI.MICRO_POCKET_SIZE = 5
NDefines.NAI.POCKET_DISTANCE_MAX = 6000

NDefines.NAI.PLAN_MIN_SIZE_FOR_FALLBACK = 2000
NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.15
NDefines.NAI.FRONT_UNITS_CAP_FACTOR = 13.0
NDefines.NAI.RAIDS_CREATE_FREQUENCY_DAYS = 20
NDefines.NAI.RAIDS_COMMAND_POWER_CAP_TO_CREATE = 150.0 
NDefines.NAI.COMMAND_POWER_BEFORE_SPEND_ON_TRAITS = 10.0
NDefines.NAI.ARMY_LEADER_ASSIGN_NR_TRAITS = 0
NDefines.NAI.LOCATION_BALANCE_TO_ADVANCE = 0.00
NDefines.NAI.MAIN_ENEMY_FRONT_IMPORTANCE = 5.0

NDefines.NAI.MIN_NUM_CONQUERED_PROVINCES_TO_DEPRIO_NAVAL_INVADED_FRONTS = 100

NDefines.MIN_INVASION_ORG_FACTOR_TO_EXECUTE = 0.8
NDefines.NAI.PLAN_FRONT_SECTION_MAX_LENGTH = 10
NDefines.NAI.PLAN_FRONT_SECTION_MIN_LENGTH = 5

--------------------------------------
------ Changing Careful AI (Credit Peer's Better AI) -----------
--------------------------------------
-- So I don't know a single person who actually uses the careful attack plan. Therefore i'm gonna heavily change it for the AI use.

NDefines.NAI.PLAN_EXECUTE_CAREFUL_LIMIT = 6.0                -- When looking for an attack target, this score limit is required in the battle plan to consider province for attack
NDefines.NAI.PLAN_EXECUTE_SUPPLY_CHECK = { 0.5, 0.4, 0.7, 1.0, 0.6 }


-------------------------------------------------------------------------------------------------------------------------------------------------
-- DARKEST HOUR TEST DEFINES
-------------------------------------------------------------------------------------------------------------------------------------------------

NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_DEFENSE_IMPORTANCE = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_DEFENSE_IMPORTANCE = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_DEFENSE_IMPORTANCE = 20.0


-- AI --
NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.7
NDefines.NAI.MIN_MANPOWER_TO_BUILD_UNITS = 0.7

NDefines.NAI.LAND_COMBAT_FRIEND_COMBATS_AIR_IMPORTANCE = 8
NDefines.NAI.LAND_COMBAT_ENEMY_LAND_FORTS_AIR_IMPORTANCE = 10
NDefines.NAI.LAND_COMBAT_BOMBERS_PER_COASTAL_FORT_LEVEL = 10
NDefines.NAI.NAVAL_COMBAT_TRANSFER_AIR_IMPORTANCE = 500.0
NDefines.NAI.TRADEABLE_FACTORIES_FRACTION = 1.0	


NDefines.NAI.EASY_TARGET_FRONT_IMPORTANCE = 7.5

NDefines.NAI.MAX_UNITS_FACTOR_FRONT_ORDER = 3.0
NDefines.NAI.DESIRED_UNITS_FACTOR_FRONT_ORDER = 3.0
NDefines.NAI.MIN_UNITS_FACTOR_FRONT_ORDER = 2.0
NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.3
NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.3
NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 1.2
NDefines.NAI.MANPOWER_RATIO_CAREFULNESS_THRESHOLD = 0.2

NDefines.NAI.RESOURCE_WANT_PER_MISSING_BALANCE = 1.0
NDefines.NAI.RESOURCE_WANT_PER_CONSUMED = 0.15
NDefines.NAI.MISSING_CONVOYS_BOOST_FACTOR = 30.0
NDefines.NAI.NAVAL_MISSION_MINES_PLANTING_NEAR_OWNED = 80000
NDefines.NAI.NAVAL_MISSION_MINES_SWEEPING_NEAR_OWNED = 100000


NDefines.NAI.LAND_DEFENSE_AIR_SUPERIORITY_IMPORTANCE = 0.8
NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_PLANE = 0
NDefines.NAI.LAND_DEFENSE_AA_IMPORTANCE_FACTOR = 1.0
NDefines.NAI.LAND_DEFENSE_INFRA_IMPORTANCE_FACTOR = 0.7
NDefines.NAI.FORT_LEVEL_TO_CONSIDER_HIGHLY_FORTIFIED = 4
NDefines.NAI.LAND_COMBAT_IMPORTANCE_SCALE = 5.0
NDefines.NAI.LAND_COMBAT_BOMBERS_PER_LAND_FORT_LEVEL = 15
NDefines.NAI.LAND_COMBAT_INTERCEPT_PER_PLANE = 0.4
NDefines.NAI.STR_BOMB_AIR_SUPERIORITY_IMPORTANCE = 1.0
NDefines.NAI.STR_BOMB_MIN_ENEMY_FIGHTERS_IN_AREA = 2000
NDefines.NAI.STR_BOMB_FIGHTERS_PER_PLANE = 1.5
NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_VP_WEIGHT = { 1.0, 1.0, 1.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_VP_WEIGHT = { 0.0, 1.5, 2.0 }
NDefines.NAI.AREA_DEFENSE_HOME_VP_WEIGHT = { 0.0, 0.75, 1.0 }
NDefines.NAI.AREA_DEFENSE_OTHER_VP_WEIGHT = { 0.0, 0.5, 1.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_COAST_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_COAST_WEIGHT = { 0.0, 0.3, 1.0 }
NDefines.NAI.AREA_DEFENSE_HOME_COAST_WEIGHT = { 0.0, 0.2, 0.75 }
NDefines.NAI.AREA_DEFENSE_OTHER_COAST_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_BASE_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_BASE_WEIGHT = { 0.5, 1.5, 1.5 }
NDefines.NAI.AREA_DEFENSE_HOME_BASE_WEIGHT = { 0.5, 1.5, 1.5 }
NDefines.NAI.AREA_DEFENSE_OTHER_BASE_WEIGHT = { 0.5, 1.0, 1.0 }
NDefines.NAI.MAX_UNITS_FACTOR_AREA_ORDER = 2.0
NDefines.NAI.DESIRED_UNITS_FACTOR_AREA_ORDER = 1.5
NDefines.NAI.MIN_UNITS_FACTOR_AREA_ORDER = 1.0
NDefines.NAI.DEFAULT_SUPPLY_TRUCK_BUFFER_RATIO = 2.0

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
NDefines.NAI.PLAN_STEP_COST_LIMIT_REDUCTION = 0.012                         -- vanilla 0.01
NDefines.NAI.AREA_DEFENSE_IMPORTANCE_FACTOR = 1.35                          -- vanilla 1.0

--------------------------------------
------ How Many Divisions the AI Wants -----------
--------------------------------------
NDefines.NAI.WANTED_UNITS_DANGEROUS_NEIGHBOR_FACTOR = 1.35    -- vanilla 1.15
NDefines.NAI.WANTED_UNITS_THREAT_BASE = 0.9                  -- vanilla 0.7
NDefines.NAI.WANTED_UNITS_WAR_THREAT_FACTOR = 1.35           -- vanilla 1.15
NDefines.NAI.WANTED_UNITS_INDUSTRY_FACTOR = 1.85             -- vanilla 1.6
NDefines.NAI.WANTED_UNITS_MANPOWER_DIVISOR = 20000           -- vanilla 21000
NDefines.NAI.WANTED_UNITS_MIN_DEFENCE_FACTOR = 0.55          -- vanilla 0.4
NDefines.NAI.WANTED_UNITS_WEIGHT_FRONTS_WANT = 0.45          -- vanilla 0.35
NDefines.NAI.WANTED_UNITS_WEIGHT_FACTORIES = 0.6             -- vanilla 0.45
NDefines.NAI.WANTED_UNITS_WEIGHT_MANPOWER = 0.4              -- vanilla 0.3

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
NDefines.NMilitary.COMBAT_VALUE_ORG_IMPORTANCE = 1.35     -- vanilla 1
NDefines.NMilitary.COMBAT_VALUE_STR_IMPORTANCE = 0.9      -- vanilla 1
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
------ Supply & Front Deployment (NSupply) -----------
--------------------------------------
NDefines.NSupply.AI_FRONT_MAX_UNITS_ENEMY_COUNT_FACTOR = 1.35     -- vanilla 1.2
NDefines.NSupply.AI_FRONT_MINIMUM_UNITS_PER_PROVINCE_FOR_SUPPLY_CALCULATIONS = 1.2 -- vanilla 1.0