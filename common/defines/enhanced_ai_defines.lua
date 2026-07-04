----------------------------------------------------------------------------------------------------
-- ENHANCED AI
----------------------------------------------------------------------------------------------------
--------------------------------------------------
-- DESIGNS
--------------------------------------------------
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_LAND = 20 --50	-- Army XP needed before attempting to create a variant of a type that uses the tank designer (the tank designer DLC feature must be active).
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_NAVY = 20 --50	-- Same as above but for the ship designer.
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_AIR = 20 --25	-- Same as above but for the air designer.

NDefines.NAI.VARIANT_CREATION_XP_RESERVE_LAND = 30 --50					-- If the AI lacks army XP to create a variant it will reserve this much XP for variant creation so that it will eventually be able to create a variant.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_NAVY = 30 --50					-- Same as above but for navy XP.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_AIR  = 30 --50					-- Same as above but for air XP.

-- The AI uses the below values when selecting which design to make among the types that use the tank designer
-- (the tank designer DLC feature must be active). For each role, the highest priority AI design that can be
-- created, if any, is assigned a weight. Any design with a weight of zero or a weight that falls below the
-- cutoff is dropped. A random design is then picked from the remaining.
-- Weight is calculated as AlternativeFactor * DemandFactor.
-- An "alternative" is a producible design of the same archetype (each specialized type is its own archetype).

NDefines.NAI.LAND_DESIGN_ALTERNATIVE_ABSENT = 1000000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_LESSER_TECH = 10000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_EQUAL_TECH = 100
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_GREATER_TECH = 1

-- If a template may be reinforced with the archetype it's considered to be "demanded". If multiple conditions
-- are met, e.g. it's both in the field and in training, the largest value is used.

NDefines.NAI.LAND_DESIGN_DEMAND_FIELD_DIVISION = 20
NDefines.NAI.LAND_DESIGN_DEMAND_TRAINING_DIVISION = 15
NDefines.NAI.LAND_DESIGN_DEMAND_GARRISON_DIVISION = 10
NDefines.NAI.LAND_DESIGN_DEMAND_UNUSED_TEMPLATE = 1
NDefines.NAI.LAND_DESIGN_DEMAND_ABSENT = 1

-- If a design with a weight when divided by the largest weight falls below this value it's excluded from the
-- selection. Valid values are in the range [0, 1] inclusive.

NDefines.NAI.LAND_DESIGN_CUTOFF_AS_PERCENTAGE_OF_MAX = 0.25 --0.25

--------------------------------------------------
-- XP SPENDING DESIRES
--------------------------------------------------
-- The AI "desires" to spend XP on doctrines, templates, and equipment.
-- The desire is built up over time and when XP is available it spends it on the action that has the highest accumulated desire. After spending XP the desire is reset, in effect balancing the desires.
-- Below is the daily desire gain for each action.

NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_LAND_DOCTRINE = 1.0    -- How quickly is desire to unlock land doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVAL_DOCTRINE = 1.0   -- How quickly is desire to unlock naval doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_DOCTRINE = 1.0     -- How quickly is desire to unlock air doctrines accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UPDATE_LAND_TEMPLATE = 100.0    -- How quickly is desire to update/create templates accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_LAND_EQUIPMENT = 10.0  -- How quickly is desire to update/create land equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_NAVAL_EQUIPMENT = 10.0 -- How quickly is desire to update/create naval equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_AIR_EQUIPMENT = 10.0   -- How quickly is desire to update/create air equipment variants accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_ARMY_SPIRIT = 0.01      -- How quickly is desire to unlock army spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVY_SPIRIT = 0.01      -- How quickly is desire to unlock naval spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_SPIRIT = 0.01       -- How quickly is desire to unlock air spirits accumulated?

--------------------------------------------------
-- WANTED NUMBER OF DIVISIONS
--------------------------------------------------
	-- Calculating wanted nr of divisions
NDefines.NAI.WANTED_UNITS_INDUSTRY_FACTOR = 1.60                        -- How many units a country wants is partially based on how much military industry that is available
NDefines.NAI.WANTED_UNITS_THREAT_BASE = 0.7                             -- If no threat, multiply min wanted units by this
NDefines.NAI.WANTED_UNITS_THREAT_MAX = 6.0                             -- Normalized threat is clamped to this
NDefines.NAI.WANTED_UNITS_WAR_THREAT_FACTOR = 1.15                       -- Factor threat with this if country is at war. this value is overriden by the value in ideology database if that value exceedes this.
NDefines.NAI.WANTED_UNITS_DANGEROUS_NEIGHBOR_FACTOR = 1.15              -- Factor if has dangerous neighbor
NDefines.NAI.WANTED_UNITS_MANPOWER_DIVISOR = 21000                      -- Normalizing divisor for AI manpower. (for each x max available manpower, they want one division)
NDefines.NAI.WANTED_UNITS_WEIGHT_FRONTS_WANT = 0.35                      -- Weight of front needs when computing final nr wanted units
NDefines.NAI.WANTED_UNITS_WEIGHT_FACTORIES = 0.45                        -- Weight of military factories when computing final nr wanted units
NDefines.NAI.WANTED_UNITS_WEIGHT_MANPOWER = 0.3                         -- Weight of manpower availability when computing final nr wanted units
NDefines.NAI.WANTED_UNITS_MIN_DEFENCE_FACTOR = 0.4						-- Factor on units required for min defence
	-- End of calculating wanted nr of divisions

NDefines.NAI.WANTED_UNITS_MAX_WANTED_CAP = 1000	-- Maximum wanted divisions for a country. This can be exceeded by certain hardcoded multipliers, but not by base calculation logic.

--------------------------------------------------
-- DIVISION UPGRADES, DEPLOYMENT & TRAINING
--------------------------------------------------
NDefines.NAI.STOP_TRAINING_FULLY_TRAINED_FACTOR = 0.99  -- vanilla 0.95 | ai will not train if at least this ratio of divisions in the army are fully trained
NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 3  -- vanilla 7 | How often to consider upgrading to new templates for units in the field
NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 0.08  -- vanilla 0.20 | How big part of the army that should be considered for upgrading
NDefines.NAI.UPGRADES_DEFICIT_LIMIT_DAYS = 120  -- vanilla 60 | Ai will avoid upgrading units in the field to new templates if it takes longer than this to fullfill their equipment need

NDefines.NAI.LOW_PRIO_TEMPLATE_BONUS_FOR_GARRISONS = 300000  -- vanilla 1000 | bonus to make ai more likely to assign low prio units to garrisons
NDefines.NAI.LOW_PRIO_TEMPLATE_PENALTY_FOR_FRONTS = -2000  -- vanilla 500 | penalty to make ai less likely to assign low prio units to fronts

NDefines.NAI.START_TRAINING_EQUIPMENT_LEVEL = 0.25  -- vanilla 0.40 | ai will not start to train if equipment drops below this level
NDefines.NAI.STOP_TRAINING_EQUIPMENT_LEVEL = 0.10  -- vanilla 0.25 | ai will not train if equipment drops below this level
NDefines.NAI.START_TRAINING_SUPPLY_LEVEL = 0.25  -- vanilla 0.40 | ai will not start to train if supply ratio drops below this level
NDefines.NAI.STOP_TRAINING_SUPPLY_LEVEL = 0.15  -- vanilla 0.30 | ai will not train if supply ratio drops below this level

--------------------------------------------------
-- EQUIPMENT PRODUCTION
--------------------------------------------------
NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.3 -- Base value for how much of currently used equipment the AI will at least strive to have in stock
NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR_GARRISON = 0.1 -- Base value for how much of currently used equipment the AI will at least strive to have in stock for garrison forces

--------------------------------------------------
-- NAVY & AIR FORCE TRAINING
--------------------------------------------------
NDefines.NAI.MAX_FULLY_TRAINED_SHIP_RATIO_FOR_TRAINING = 0.95  -- vanilla 0.7 | ai will not train a taskforce if fully trained ships are above this ratio | [VNR]
NDefines.NNavy.AI_MAX_TASKFORCES_PER_TRAINING_OBJECTIVE = 20  -- vanilla 5 | Max number of taskforces we desire for AI to put in each fleet that is training. | [VNR]
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 0.90  -- vanilla 0.20 | ai will use at most this ratio of affordable fuel for air training
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_NAVY_TRAINING = 0.60  -- vanilla 0.20 | ai will use at most this ratio of affordable fuel for naval training

--------------------------------------------------
-- RAILWAY GUNS
--------------------------------------------------
NDefines.NAI.RAILWAY_GUN_PRODUCTION_BASE_DIVISIONS_RATIO_PERCENT = 5  -- vanilla 0 | Base ratio of desired railway guns to divisions for AI (5 means 5%). Can be modified by railway_guns_divisions_ratio AI strategy value
NDefines.NAI.RAILWAY_GUN_PRODUCTION_MIN_DIVISONS = 50  -- vanilla 20 | Minimum required number of divisions for the AI to consider producing railway guns
NDefines.NAI.RAILWAY_GUN_PRODUCTION_MIN_FACTORIES = 25  -- vanilla 10 | Minimum required number of military factories for the AI to consider producing railway guns

--------------------------------------------------
-- INTELLIGENCE AGENCY
--------------------------------------------------
NDefines.NOperatives.AGENCY_AI_BASE_NUM_FACTORIES = 10.0  -- vanilla 25.0 | Used by AI to pace the upgrades. Formula : if( AGENCY_AI_BASE_NUM_FACTORIES <= num_civ_factories - num_upgrades * AGENCY_AI_PER_UPGRADE_FACTORIES ) | [FAI]
NDefines.NOperatives.AGENCY_AI_PER_UPGRADE_FACTORIES = 2.0  -- vanilla 6.0 | Used by AI to pace the upgrades. Formula : if( AGENCY_AI_BASE_NUM_FACTORIES <= num_civ_factories - num_upgrades * AGENCY_AI_PER_UPGRADE_FACTORIES ) | [FAI]

--------------------------------------------------
-- ARMS MARKET
--------------------------------------------------
NDefines.NAI.EQUIPMENT_MARKET_MAX_CIVS_FOR_PURCHASES_RATIO = 0.2  -- vanilla 0.1 | Ratio of available civilian factories to max use for equipment purchases (0.2 = 20 %, so 50 available civs would mean max ca 10 civs to spend on purchases at any one time). Gets modified by equipment_market_spend_factories AI strategy.
NDefines.NAI.EQUIPMENT_MARKET_NR_DELIVERIES_SOFT_MAX = 7  -- vanilla 10 | AI tries to adjust assigned factories and amount of equipment to keep nr deliveries at max this
