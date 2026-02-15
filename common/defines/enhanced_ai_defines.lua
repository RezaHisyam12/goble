-------------------------------------------------------------------------------------------------------------------------------------------------
-- ENHANCED AI DEFINES
-------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- DESIGNS
---------------------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------------------------------------
-- XP SPENDING DESIRES
--------------------------------------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------------------------------------
-- WANTED NUMBER OF DIVISIONS
--------------------------------------------------------------------------------------------------------------
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

--------------------------------------------------------------------------------------------------------------
-- DIVISION UPGRADES
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 3
NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 0.10
NDefines.NAI.STOP_TRAINING_FULLY_TRAINED_FACTOR = 0.99
NDefines.NAI.UPGRADES_DEFICIT_LIMIT_DAYS = 60

--------------------------------------------------------------------------------------------------------------
-- AREA DEFENSE
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.AREA_DEFENSE_SETTING_VP = false								-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_PORTS = true								-- Vanilla is true
NDefines.NAI.AREA_DEFENSE_SETTING_AIRBASES = false							-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_BORDERS = false							-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_FORTS = false								-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_COASTLINES = false						-- Vanilla is true
NDefines.NAI.AREA_DEFENSE_SETTING_RAILWAYS = false							-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_FACILITY = false							-- Vanilla is false

-------------------------
-- NAVAL INVASIONS
-------------------------
NDefines.NAI.MAX_INVASION_SIZE = 64	
NDefines.NAI.MIN_INVASION_AREA_SIZE_FOR_FLOATING_HARBORS = 1   -- AI will consider using floating harbors for naval invasion if invasion area is larger than this many provinces
NDefines.NAI.MAX_DISTANCE_NAVAL_INVASION = 100.0				-- AI is extremely unwilling to plan naval invasions above this naval distance limit.

NDefines.NAI.INVASION_TARGET_DISTANCE_DENOMINATOR = 1000	-- Vanilla 1000            -- When selecting invasion target, divide this with (pixel) distance to get distance score factor. (Doesn't really affect the relative scoring, but it affects the linearity of the score function.)
NDefines.NAI.INVASION_TARGET_NO_PORT_FACTOR = 0.1	-- Vanilla 0.3                   -- When selecting invasion target, multiply score with this if the target has no port
NDefines.NAI.INVASION_TARGET_TRUNCATION_SELECT_THRESHOLD = 0.9	-- Vanilla 0.6      -- When selecting invasion target, use this threshold for truncation selection. (1.0 means select highest scored target, 0.0 means select randomly from all possible target, 0.5 means select randomly from all targets with more than 50 % of highest score)
NDefines.NAI.INVASION_TARGET_PRIO_NOT_ENEMY_FACTOR = 0.15	-- Vanilla 0.17           -- When calculating priority for an invasion, factor the score with this if the target is not an actual enemy.
