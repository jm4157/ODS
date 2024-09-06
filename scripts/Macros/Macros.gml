// A collection of defined macros

// Important Sizes
#macro SCREEN_WIDTH 1920
#macro SCREEN_HEIGHT 1080
#macro ACTOR_WIDTH (SCREEN_WIDTH / 2)
#macro ACTOR_HEIGHT (SCREEN_HEIGHT / 4 * 3)

// Emotion Indices
#macro NEUTRAL 0
#macro HAPPY 1
#macro CONFUSED 2
#macro ANGRY 3
#macro BLUSH 4
#macro NERVOUS 5
#macro DETERMINED 6

// Character Codes
#macro CHAR_NULL -1
#macro PLAGUE 0
#macro MONA 1
#macro PERCY 2
#macro HEDGE 3

// Item Codes
#macro EMPTY 0
#macro CHOCBAR 1
#macro QUARTER 2

// Inventory Details
#macro INVEN_SLOTS 5
#macro INVEN_DIAM 64
#macro INVEN_X_INIT (SCREEN_WIDTH - INVEN_DIAM - 25)
#macro INVEN_X_OFFSET (INVEN_DIAM + 10)
#macro INVEN_Y 25
#macro INVEN_HAND 0

// Minimap Positions
#macro MINIMAP_X 25
#macro MINIMAP_Y 25
#macro DATE_X MINIMAP_X
#macro DATE_Y (MINIMAP_Y + 180 + 25)
#macro TIME_X DATE_X
#macro TIME_Y (DATE_Y + 50)
#macro OUTLINE_WIDTH 3
#macro OUTLINE_FIDELITY 8

// Stage positions
#macro ACTORL_X 0
#macro ACTORL_Y 0
#macro ACTORC_X ((SCREEN_WIDTH - ACTOR_WIDTH) / 2)
#macro ACTORC_Y 0
#macro ACTORR_X SCREEN_WIDTH
#macro ACTORR_Y 0
#macro DIALOGUE_X 0
#macro DIALOGUE_Y ACTOR_HEIGHT
#macro DIALOGUE_MARGIN 50
#macro DIALOGUE_GAP 70
#macro DIALOGUE_WIDTH (SCREEN_WIDTH * 0.9)
#macro DIALOGUE_LINE 35
#macro CHOICE_X ((SCREEN_WIDTH - CHOICE_WIDTH) / 2)
#macro CHOICE_Y ACTOR_HEIGHT
#macro CHOICE_WIDTH 1000
#macro CHOICE_HEIGHT 50

// Date, Time and Major
#macro MONDAY 0
#macro WEDNESDAY 1
#macro FRIDAY 2
#macro MORNING 0
#macro CLASS 1
#macro AFTERNOON 2
#macro EVENING 3
#macro MAJOR_NULL -1
#macro MAJOR_CHEM 0

// Pointer integers
#macro PTR_COUNT 6
#macro FAVOR_PLAGUE 0
#macro FAVOR_MONA 1
#macro FAVOR_PERCY 2
#macro EVENT_MONADISGUSTED 3
#macro EVENT_PLAGUEPARTNER 4
#macro GLOBAL_PATH 5

// Unprompted dialogue flag
#macro UPMPT_COUNT 6
#macro UPMPT_GAMEINTRO 0
#macro UPMPT_CLASSINTRO 1
#macro UPMPT_POSTMON 2
#macro UPMPT_POSTWED 3
#macro UPMPT_POSTFRI 4
#macro UPMPT_LABDAY 5

// Backdrop sizes
#macro SETTINGS_MARGIN_BORDER 20
#macro SETTINGS_HEIGHT_TITLE 40
#macro SETTINGS_MARGIN_TITLE 15
#macro SETTINGS_HEIGHT_BUTTON 133
#macro SETTINGS_MARGIN_BUTTON 5
#macro SETTINGS_HEIGHT (SETTINGS_MARGIN_BORDER * 2 + SETTINGS_HEIGHT_TITLE + SETTINGS_MARGIN_TITLE + SETTINGS_HEIGHT_BUTTON * 5 + SETTINGS_MARGIN_BUTTON * 4)
#macro SETTINGS_BUTTON_WIDTH 400
#macro SETTINGS_WIDTH 450
#macro MENU_MARGIN_BUTTON 50

// Layer codes
#macro SCREEN 0
#macro STAGE 1
#macro MENU 2
#macro SUBMENU 3
#macro SUBSUBMENU 4

// Layer depths
#macro SCREEN_FAR 25
#macro SCREEN_MID 0
#macro SCREEN_NEAR -25
#macro STAGE_FAR -75
#macro STAGE_MID -100
#macro STAGE_NEAR -125
#macro MENU_FAR -175
#macro MENU_MID -200
#macro MENU_NEAR -225
#macro SUBMENU_FAR -275
#macro SUBMENU_MID -300
#macro SUBMENU_NEAR -325
#macro SUBSUBMENU_FAR -375
#macro SUBSUBMENU_MID -400
#macro SUBSUBMENU_NEAR -425

// Sound Priorities
#macro PRTY_SFX 50
#macro PRTY_MSC 100

// Timing
#macro SECOND 30
