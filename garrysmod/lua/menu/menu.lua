--This custom menu, with allowed functions in menustate https://wiki.facepunch.com/gmod/States#menu (gmod menu)
if not MENU_DLL then return end
timer.Simple(1,function()
local sett={}
sett["asuswalls"]=false
sett["asuswalls_key"]=0
sett["asuswalls_alpha"]=0.9
sett["asuswalls_map"]="rp_bangclaw"
sett["spam"]=false
sett["spam_ooc"]=false
sett["spam_texttable"]={}
sett["spam_flashlight"]=false
sett["crosshair"]=false
sett["crosshair_standart"]=false
sett["crosshair_circle"]=false
sett["crosshair_box"]=false
sett["crosshair_size"]=10
sett["crosshair_color"]=Color(255,255,255)
sett["menu_key"]=72
sett["notify_screengraben"]=false
sett["afkmode"]=false
sett["info"]=false
sett["info_freeze"]=false
sett["info_pos"]={}
sett["info_pos"]["x"]=20
sett["info_pos"]["y"]=70
sett["fpsboost"]=false
sett["norecoil"]=false
sett["imgurscreenshot_key"]=0
sett["familysharing_key"]="5DCF81C641ACAE4B5E5332A5E04B5FCD"
local sets=cookie.GetString("chitmod")
if sets then
sett=util.JSONToTable(sets)
end
local maps={}
--local a='maps["'..game.GetMap()..'"]={'for b,c in pairs(game.GetWorld():GetMaterials())do a=a..'"'..c..'",'end;a=a.."}"SetClipboardText(a)
maps["rp_evocity"]={"bridge/se1_metal_flat_steel_01","cs_havana/woodm","stone/infwllc","brick/brickwall040b","de_train/train_cement_floor_01","wood/woodwall011a","stone/stonewall037e","concrete/concretewall032b","wood/woodfloor002a","wood/woodbeam002a","metal/metalwall017a","de_chateau/woodm","brick/brickwall040c","metal/metaltruss024a","metal/metalfloor005a","metal/metalwall030a","wood/wooddoor019a","metal/metalwall018a","brick/brickwall014l","stone/infstairsafrnt","env/brush/floors/textiles_bankcarpet","customtext/gc textures/wood/wood_fnished01","concrete/curba","de_chateau/woodi","sgtsicktextures/stuccodarkgreen","concrete/concretewall064a","cs_italy/stonewall01","maps/rp_evocity_v33x/bridge/se1_concrete_flat_01_-2736_126_128","maps/rp_evocity_v33x/bridge/se1_concrete_flat_01_-3563_-4988_272","maps/rp_evocity_v33x/bridge/se1_concrete_flat_01_9811_4479_70","maps/rp_evocity_v33x/bridge/se1_concrete_flat_01_10272_12536_120","sgtsicktextures/stuccolight2t","sgtsicktextures/stuccodark","maps/rp_evocity_v33x/env/brush/floors/woodflooring_-10628_-9889_138","stone/infwllftop","props/rubberbumper001a","de_train/train_cementwear_01","cs_havana/stonework01a","maps/rp_evocity_v33x/sgtsicktextures/metalgreybp_-4977_-9016_1672","metal/metalwall018b","metal/citadel_metalwall074a","concrete/concretewall022a","cs_italy/stonewall01a","sgtsicktextures/bk_yellowmetal","maps/rp_evocity_v33x/sgtsicktextures/building_01a_-6480_-8825_136","maps/rp_evocity_v33x/de_piranesi/woodstair02_2728_11284_250","toronto/pavement/concrete_tile/pavement_tile_01","concrete/concretefloor023a","wood/woodfloor001a","concrete/concretefloor008a","de_tides/tides_brick_wall_d","wood/woodwall028a","de_tides/tides_floor_cobble_1","metal/metalwall005b","sgtsicktextures/ampmstripe","ajacks/ben_whiteceiling","building_template/building_template019a","props/plasticceiling002a","metal/metaltruss025a","maps/rp_evocity_v33x/sgtsicktextures/building_01a_-5252_-7614_132","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-7041_-12249_125","maps/rp_evocity_v33x/labs/se1_glass_window_02_-6595_-7646_137","brick/brickwall004a","maps/rp_evocity_v33x/tile/urban_countertop01b_-11176_9360_119","maps/rp_evocity_v33x/tile/urban_countertop01b_-9986_9690_119","maps/rp_evocity_v33x/tile/urban_countertop01b_-4564_13969_241","building_template/building_template014a","building_template/building_template013a","maps/rp_evocity_v33x/tile/urban_countertop01b_-3604_13969_241","maps/rp_evocity_v33x/sgtsicktextures/metalgreybp_-2040_3980_137","maps/rp_evocity_v33x/sgtsicktextures/metalgreybp_-3025_3100_137","maps/rp_evocity_v33x/sgtsicktextures/metalgreybp_-1680_7717_137","maps/rp_evocity_v33x/sgtsicktextures/metalgreybp_-2904_6665_137","maps/rp_evocity_v33x/bridge/se1_concrete_flat_01_-11_748_137","maps/rp_evocity_v33x/bridge/se1_concrete_flat_01_2975_-7313_189","maps/rp_evocity_v33x/wood/offdesktop_2336_11728_123","wood/wooddoor015a","maps/rp_evocity_v33x/wood/offdesktop_-5415_-9282_138","env/brush/misc/wood_cherrywooddark","sgtsicktextures/bk_bluemetal","de_tides/tides_brick_wall_i","maps/rp_evocity_v33x/wood/offdesktop_-5156_-9285_140","stone/infflrc","de_chateau/stairse","stone/stonewall_inn03a","concrete/concretewall060c","wood/woodwall003a","wood/fence03","wood/fence03top","de_chateau/walltrima","stone/tidstairsafrnt","customtext/gc textures/wood/wood_unfinished09","maps/rp_evocity_v33x/bridge/se1_concrete_flat_01_-7680_8975_119","maps/rp_evocity_v33x/tile/urban_countertop01b_-10684_-10207_506","maps/rp_evocity_v33x/bridge/se1_concrete_flat_01_-9257_9363_119","maps/rp_evocity_v33x/bridge/se1_concrete_flat_01_-6032_12816_292","maps/rp_evocity_v33x/labs/se1_glass_window_02_-5366_-4608_124","maps/rp_evocity_v33x/labs/se1_glass_window_02_-6769_-4573_139","lights/blue002","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-6946_-9041_-374","de_piranesi/pi_wood1","maps/rp_evocity_v33x/wood/offdesktop_-4673_-4608_272","sgtsicktextures/bk_redmetal","concrete/concretefloor009a","de_tides/tides_brick_wall_c","de_tides/tides_brick_wall_a","de_dust/dutile1","cs_italy/cr_miscwood2b","maps/rp_evocity_v33x/sgtsicktextures/building_01a_-5371_-9021_1672","maps/rp_evocity_v33x/sgtsicktextures/building_01a_-4915_-9285_1524","maps/rp_evocity_v33x/labs/se1_glass_window_02_-4324_-6866_272","cs_italy/castflt","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-7028_-12895_125","maps/rp_evocity_v33x/sgtsicktextures/metalgreybp_-5244_-6288_272","maps/rp_evocity_v33x/wood/offdesktop_-3703_-7057_272","maps/rp_evocity_v33x/wood/offdesktopsd_-3697_-6654_272","maps/rp_evocity_v33x/wood/offdesktopsd_-3652_-7942_272","maps/rp_evocity_v33x/wood/offdesktop_-4256_-4240_272","stone/stonewall014b","de_nuke/nuke_walloffice_01","env/brush/walls/wall_wood_olde","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-7028_-13179_151","maps/rp_evocity_v33x/plaster/offwllz_-6932_-9319_3852","maps/rp_evocity_v33x/plaster/offwllx_-7250_-9236_523","maps/rp_evocity_v33x/plaster/offwllx_-7556_-8896_523","maps/rp_evocity_v33x/plaster/offwllx_-6973_-8879_523","maps/rp_evocity_v33x/plaster/offwllz_-6560_-9443_3852","ajacks/ben_white","brick/brickwall045f","de_train/train_cement_floor_02","colour/neon/blue_neon","ajacks/ben_paintdarkred","nature/icefloor003a","maps/rp_evocity_v33x/wood/offdesktop_-6960_-14195_125","maps/rp_evocity_v33x/env/glass/glass_deco_blue_-7041_-12249_125","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-5124_-9585_138","maps/rp_evocity_v33x/plaster/offwllx_-7596_-9493_523","ajacks/ajacks_10","maps/rp_evocity_v33x/plaster/offwllx_-6480_-8825_136","maps/rp_evocity_v33x/plaster/offwllx_-6946_-9041_-374","maps/rp_evocity_v33x/plaster/offwllx_-7847_-9509_-374","cs_havana/metalwall085a","maps/rp_evocity_v33x/wood/offdesktop_-7028_-13179_151","maps/rp_evocity_v33x/wood/offdesktop_-5244_-6288_272","maps/rp_evocity_v33x/wood/offdesktop_-5251_-7141_132","maps/rp_evocity_v33x/wood/offdesktop_-5252_-7614_132","maps/rp_evocity_v33x/wood/offdesktop_-7596_-9493_523","maps/rp_evocity_v33x/wood/offdesktop_-7028_-13639_125","maps/rp_evocity_v33x/wood/offdesktop_-6946_-9041_-374","maps/rp_evocity_v33x/wood/desk02_-7656_-6288_137","maps/rp_evocity_v33x/wood/offdesktop_-7041_-12249_125","maps/rp_evocity_v33x/wood/offdesktop_-10531_-9236_130","maps/rp_evocity_v33x/wood/offdesktop_-10551_-8941_130","concrete/concretewall004c","wood/woodshelf001a","maps/rp_evocity_v33x/warehouse/se1_metal_base_01_-4977_-9016_1672","maps/rp_evocity_v33x/sgtsicktextures/bplogogreybg_-6004_-6868_132","props/metalpanel016b","wood/inffence01","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-5995_-11284_125","intro/se1_storefront_02c","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-7344_-14223_125","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-7028_-13639_125","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-6960_-14195_125","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-7024_-14572_125","maps/rp_evocity_v33x/de_piranesi/woodstair02_4468_10829_114","maps/rp_evocity_v33x/wood/offdesktop_-7481_-10510_-374","maps/rp_evocity_v33x/wood/offdesktop_-7160_-10452_-374","maps/rp_evocity_v33x/wood/offdesktop_-7847_-9509_-374","maps/rp_evocity_v33x/wood/offdesktop_2948_14232_186","maps/rp_evocity_v33x/tile/urban_countertop01b_-13552_11067_292","maps/rp_evocity_v33x/tile/urban_countertop01b_-13526_12206_292","maps/rp_evocity_v33x/tile/urban_countertop01b_-9644_11438_292","maps/rp_evocity_v33x/tile/urban_countertop01b_-5946_14760_292","maps/rp_evocity_v33x/tile/urban_countertop01b_-4672_11837_290","maps/rp_evocity_v33x/tile/urban_countertop01b_-3840_11837_290","maps/rp_evocity_v33x/tile/urban_countertop01b_-6032_12816_292","maps/rp_evocity_v33x/labs/se1_glass_window_02_-7467_-7706_137","de_aztec/stonework05d","maps/rp_evocity_v33x/sgtsicktextures/metalgreybp_-6761_-6297_137","nature/snowwall002a","ajacks/ben_painttan2","ajacks/ben_paintblue","maps/rp_evocity_v33x/labs/se1_glass_window_02_-5244_-6288_272","cs_italy/marketwall01a","maps/rp_evocity_v33x/labs/se1_glass_window_02_-4997_-5963_132","maps/rp_evocity_v33x/env/glass/glass_deco_blue_-6913_-9488_523","maps/rp_evocity_v33x/env/glass/glass_deco_blue_-7596_-9493_523","maps/rp_evocity_v33x/warehouse/se1_metal_base_01_-18_2490_137","sgtsicktextures/graywarehousewalltop","warehouse/se1_door_blue_01","de_nuke/nukroof01","sgtsicktextures/load3","sgtsicktextures/load2","sgtsicktextures/load1","maps/rp_evocity_v33x/warehouse/se1_metal_base_01_-3025_3100_137","metal/metaltruss026a","wood/door_white01","maps/rp_evocity_v33x/metal/metalwall018e_776_4475_126","wood/woodwall037a","maps/rp_evocity_v33x/labs/se1_glass_window_02_-7656_-6288_137","maps/rp_evocity_v33x/de_piranesi/woodstair02_4556_11089_114","maps/rp_evocity_v33x/labs/se1_glass_window_02_-6761_-6297_137","maps/rp_evocity_v33x/glass/offwndwb_-7041_-12249_125","maps/rp_evocity_v33x/env/glass/glass_deco_green_-7041_-12249_125","maps/rp_evocity_v33x/glass/offwndwb_-7481_-10510_-374","lights/white003_nochop","brick/brickwall045d","env/brush/walls/wall_red_panel","maps/rp_evocity_v33x/wood/offdesktop_-5124_-9585_138","brick/brickwall045a","maps/rp_evocity_v33x/wood/offdesktop_-7260_-9165_152","env/brush/walls/wall_blueswirl","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-5124_-9001_138","metal/metaltruss022c","maps/rp_evocity_v33x/wood/offdesktop_-5124_-9001_138","maps/rp_evocity_v33x/metal/citadel_tilefloor016a_-5415_-9282_138","maps/rp_evocity_v33x/tile/urban_countertop01b_-4364_13969_241","maps/rp_evocity_v33x/tile/urban_countertop01b_-10684_-10203_384","maps/rp_evocity_v33x/tile/urban_countertop01b_-10684_-10205_259","env/brush/ceilings/cream_ceiling","maps/rp_evocity_v33x/tile/urban_countertop01b_-10531_-9236_130","maps/rp_evocity_v33x/tile/urban_countertop01b_-10460_-9253_324","maps/rp_evocity_v33x/plaster/urban_plasterwall_05e_-10400_9333_119","maps/rp_evocity_v33x/plaster/urban_plasterwall_05e_-10056_9031_119","maps/rp_evocity_v33x/plaster/urban_plasterwall_05e_-9636_9120_119","maps/rp_evocity_v33x/plaster/urban_plasterwall_05e_-9986_9690_119","maps/rp_evocity_v33x/plaster/urban_plasterwall_05e_-10133_9690_119","maps/rp_evocity_v33x/metal/forest_metal_02c_-10508_-10529_138","maps/rp_evocity_v33x/labs/se1_glass_window_02_-5415_-9282_138","metal/metaldoor061a","plaster/milwall001","maps/rp_evocity_v33x/sgtsicktextures/metalgreybp_-18_2490_137","maps/rp_evocity_v33x/warehouse/se1_metal_base_01_-2040_3980_137","metal/metalwall065f","maps/rp_evocity_v33x/sgtsicktextures/bk_wallext_02_-7400_-3564_139","maps/rp_evocity_v33x/sgtsicktextures/bk_wallext_02_-7605_-4824_139","sgtsicktextures/bk_shingles01","maps/rp_evocity_v33x/labs/se1_glass_window_02_5234_-4057_160","maps/rp_evocity_v33x/wood/offdesktop_2752_13534_131","env/brush/walls/wall_turq_swirly","maps/rp_evocity_v33x/concrete/blendconcreterock001a_wvt_patch","maps/rp_evocity_v33x/wood/offdesktop_2336_11284_123","wood/woodshingles002a","wood/milwall010","maps/rp_evocity_v33x/wood/offdesktop_-1680_7717_137","maps/rp_evocity_v33x/wood/offdesktop_2728_11284_250","wood/woodwall030a","wood/woodwall030b","cs_italy/brickwall01","wood/woodwall024a","maps/rp_evocity_v33x/wood/offdesktop_2944_13860_123","maps/rp_evocity_v33x/wood/offdesktop_2692_13948_58","env/brush/walls/wall_tan_darktrim","maps/rp_evocity_v33x/wood/offdesktop_2498_11728_250","maps/rp_evocity_v33x/wood/offdesktop_2336_11728_250"}
maps["gm_construct"]={"maps/gm_construct/building_template/building_template007b_832_-448_-96","maps/gm_construct/building_template/building_template007h_-256_-1472_-96","maps/gm_construct/building_template/building_template007i_-256_-1472_-96","maps/gm_construct/concrete/concretefloor028a_-2408_-2702_329","concrete/concreteceiling001a","plaster/plasterwall016a","concrete/concreteceiling003a","building_template/building_template007a","building_template/building_template007l","maps/gm_construct/building_template/building_template007h_832_-448_-96","maps/gm_construct/plaster/plasterwall022c_-2992_-1272_-48","maps/gm_construct/concrete/concretefloor028a_128_-576_-96","maps/gm_construct/plaster/plasterwall022c_-3072_-1472_-96","gm_construct/wall_bottom","gm_construct/wall_top","concrete/concretestair005a","maps/gm_construct/concrete/concretefloor028a_-1792_-1536_-96","plaster/plasterceiling003a","maps/gm_construct/concrete/concretefloor028a_-1280_-1536_-96","building_template/roof_template001a","gm_construct/construct_concrete_ground","maps/gm_construct/concrete/concretefloor028a_1344_3584_32","maps/gm_construct/concrete/concretefloor028a_-3072_-1472_-96","maps/gm_construct/concrete/concretefloor028a_-2992_-1272_-48","maps/gm_construct/plaster/plasterwall022c_2112_-960_-80","dev/dev_measuregeneric01b","building_template/building_template013j","maps/gm_construct/concrete/concretefloor028a_-1994_-1577_-295","maps/gm_construct/concrete/concretefloor028a_-2368_-1536_-96","building_template/building_template013m","maps/gm_construct/plaster/plasterwall022c_1280_2432_32","maps/gm_construct/concrete/concretefloor028a_1280_-1600_-64","maps/gm_construct/concrete/concretefloor028a_-2304_-2702_2400","maps/gm_construct/building_template/building_template007h_-2408_-2702_329","maps/gm_construct/building_template/building_template007h_-2304_-2702_864","maps/gm_construct/building_template/building_template007h_-2304_-2702_1408","maps/gm_construct/building_template/building_template007h_-2304_-2702_2400","maps/gm_construct/building_template/building_template007h_-2304_-2702_2944","maps/gm_construct/building_template/building_template007h_-3072_-1472_-96","maps/gm_construct/building_template/building_template007h_-1792_-1536_-96","maps/gm_construct/building_template/building_template007h_-2368_-1536_-96","maps/gm_construct/building_template/building_template007h_-1280_-1536_-96","maps/gm_construct/building_template/building_template007h_128_-576_-96","maps/gm_construct/building_template/building_template007h_-4448_5312_0","maps/gm_construct/building_template/building_template007h_-3395_5265_843","building_template/building_template013o","maps/gm_construct/building_template/building_template013h_-3395_5265_843","maps/gm_construct/building_template/building_template013h_-4416_4160_320","maps/gm_construct/building_template/building_template007h_-4416_4160_320","maps/gm_construct/concrete/concretefloor028a_-2304_-2702_2944","maps/gm_construct/building_template/building_template013h_-1280_-1536_-96","plaster/plasterceiling005a","maps/gm_construct/building_template/building_template013h_-3072_-1472_-96","maps/gm_construct/concrete/concretefloor028a_1472_-128_-71","maps/gm_construct/concrete/concretefloor028a_832_-448_-96","maps/gm_construct/concrete/concretefloor028a_1436_-571_-71","brick/brickwall053e","maps/gm_construct/concrete/concretefloor028a_1280_5760_64","brick/brickwall003a_construct","maps/gm_construct/concrete/concretefloor028a_-3395_5265_843","maps/gm_construct/concrete/concretefloor028a_1280_2432_32","maps/gm_construct/concrete/concretefloor028a_-4928_-1536_-96","maps/gm_construct/concrete/concretefloor028a_-3776_-1536_-96","maps/gm_construct/building_template/building_template013h_-2304_-2702_2944","maps/gm_construct/building_template/building_template007h_1280_2432_32","maps/gm_construct/building_template/building_template007h_-4928_-1536_-96","maps/gm_construct/building_template/building_template013h_-4928_-1536_-96","metal/metalpipe001a","metal/metaltruss010b","maps/gm_construct/concrete/concretefloor028a_-256_-1472_-96","gm_construct/construct_credits","metal/metalwall020a","maps/gm_construct/plaster/plasterwall022c_-1792_-1536_-96","maps/gm_construct/plaster/plasterwall022c_-1280_-1536_-96","maps/gm_construct/plaster/plasterwall022c_-1994_-1577_-295","maps/gm_construct/concrete/concretefloor028a_-4416_4160_320","maps/gm_construct/plaster/plasterwall022c_-256_-1472_-96","tools/toolsskybox","gm_construct/water_13_beneath","maps/gm_construct/gm_construct/water_13_1344_3584_32","maps/gm_construct/plaster/plasterwall022c_1280_5760_64","maps/gm_construct/concrete/concretefloor028a_832_384_-96","maps/gm_construct/plaster/plasterwall022c_1472_-128_-71","maps/gm_construct/plaster/plasterwall022c_1472_608_-71","maps/gm_construct/concrete/concretefloor028a_1472_608_-71","gm_construct/construct_concrete_floor","maps/gm_construct/plaster/plasterwall022c_832_-448_-96","maps/gm_construct/plaster/plasterwall022c_832_384_-96","maps/gm_construct/plaster/plasterwall022c_-3395_5265_843","maps/gm_construct/concrete/concretefloor028a_-4448_5312_0","building_template/building_template003a","maps/gm_construct/building_template/building_template007b_-3395_5265_843","maps/gm_construct/building_template/building_template010c_-3395_5265_843","maps/gm_construct/building_template/building_template010b_-3395_5265_843","maps/gm_construct/building_template/building_template007b_-4448_5312_0","maps/gm_construct/plaster/plasterwall022c_-4416_4160_320","maps/gm_construct/building_template/building_template007c_-3395_5265_843","maps/gm_construct/building_template/building_template007d_-3395_5265_843","maps/gm_construct/building_template/building_template007d_-4448_5312_0","gm_construct/flatgrass","props/plasticceiling002a","maps/gm_construct/building_template/building_template007b_-4416_4160_320","maps/gm_construct/building_template/building_template007d_-4416_4160_320","maps/gm_construct/building_template/building_template007c_-4416_4160_320","maps/gm_construct/plaster/plasterwall022c_-4928_-1536_-96","maps/gm_construct/building_template/building_template007j_-2304_-2702_1408","maps/gm_construct/building_template/building_template007c_-2304_-2702_864","maps/gm_construct/building_template/building_template010b_-2304_-2702_864","maps/gm_construct/building_template/building_template007b_-2304_-2702_864","maps/gm_construct/building_template/building_template007m_-2304_-2702_864","maps/gm_construct/building_template/building_template010g_-2304_-2702_864","maps/gm_construct/building_template/building_template007i_-2304_-2702_864","maps/gm_construct/concrete/concretefloor028a_2112_-960_-80","maps/gm_construct/building_template/building_template010b_832_-448_-96","maps/gm_construct/building_template/building_template007j_832_-448_-96","maps/gm_construct/building_template/building_template007m_832_-448_-96","maps/gm_construct/building_template/building_template010g_832_-448_-96","maps/gm_construct/building_template/building_template010g_2112_-960_-80","maps/gm_construct/building_template/building_template007b_2112_-960_-80","maps/gm_construct/building_template/building_template007m_2112_-960_-80","maps/gm_construct/building_template/building_template007c_2112_-960_-80","maps/gm_construct/building_template/building_template007h_2112_-960_-80","maps/gm_construct/building_template/building_template010b_2112_-960_-80","maps/gm_construct/building_template/building_template007b_1436_-571_-71","maps/gm_construct/building_template/building_template007c_1436_-571_-71","maps/gm_construct/building_template/building_template010g_1436_-571_-71","maps/gm_construct/building_template/building_template010c_1436_-571_-71","maps/gm_construct/building_template/building_template007j_1436_-571_-71","maps/gm_construct/building_template/building_template007m_1436_-571_-71","maps/gm_construct/building_template/building_template010b_1436_-571_-71","maps/gm_construct/building_template/building_template007h_1436_-571_-71","maps/gm_construct/building_template/building_template007j_2112_-960_-80","maps/gm_construct/building_template/building_template010c_2112_-960_-80","maps/gm_construct/plaster/plasterwall022c_1280_-1600_-64","maps/gm_construct/concrete/concretefloor028a_-2304_-2702_864","maps/gm_construct/building_template/building_template010c_832_-448_-96","maps/gm_construct/building_template/building_template007c_832_-448_-96","maps/gm_construct/building_template/building_template006b_832_-448_-96","maps/gm_construct/building_template/building_template007h_1280_-1600_-64","maps/gm_construct/building_template/building_template007b_1280_-1600_-64","maps/gm_construct/building_template/building_template007j_1280_-1600_-64","maps/gm_construct/building_template/building_template007m_1280_-1600_-64","maps/gm_construct/building_template/building_template010g_1280_-1600_-64","maps/gm_construct/building_template/building_template010c_1280_-1600_-64","concrete/concretefloor026a","maps/gm_construct/building_template/building_template007c_1280_-1600_-64","maps/gm_construct/building_template/building_template010b_1280_-1600_-64","maps/gm_construct/building_template/building_template007b_-256_-1472_-96","maps/gm_construct/building_template/building_template007b_128_-576_-96","maps/gm_construct/building_template/building_template007i_128_-576_-96","maps/gm_construct/building_template/building_template010g_128_-576_-96","maps/gm_construct/building_template/building_template007c_128_-576_-96","maps/gm_construct/building_template/building_template007m_128_-576_-96","maps/gm_construct/building_template/building_template007j_128_-576_-96","maps/gm_construct/building_template/building_template010c_128_-576_-96","maps/gm_construct/building_template/building_template010b_128_-576_-96","maps/gm_construct/building_template/building_template007c_-256_-1472_-96","maps/gm_construct/building_template/building_template010c_-256_-1472_-96","maps/gm_construct/building_template/building_template010g_-256_-1472_-96","maps/gm_construct/building_template/building_template007j_-256_-1472_-96","maps/gm_construct/building_template/building_template010b_-256_-1472_-96","maps/gm_construct/building_template/building_template010c_-2304_-2702_864","maps/gm_construct/building_template/building_template007j_-2304_-2702_864","maps/gm_construct/building_template/building_template007b_-2304_-2702_1408","maps/gm_construct/building_template/building_template006b_-256_-1472_-96","maps/gm_construct/plaster/plasterwall022c_-2304_-2702_864","maps/gm_construct/plaster/plasterwall022c_128_-576_-96","maps/gm_construct/plaster/plasterwall022c_-2368_-1536_-96","concrete/concretefloor008a","metal/metalladder001a","maps/gm_construct/building_template/building_template007d_-1280_-1536_-96","maps/gm_construct/building_template/building_template007c_-1280_-1536_-96","building_template/building_template010a","maps/gm_construct/metal/citadel_metalwall076a_-1280_-1536_-96","building_template/building_template029a","maps/gm_construct/building_template/building_template007b_-1792_-1536_-96","maps/gm_construct/building_template/building_template010c_-1792_-1536_-96","maps/gm_construct/building_template/building_template010b_-1792_-1536_-96","maps/gm_construct/metal/citadel_metalwall076a_-3072_-1472_-96","maps/gm_construct/building_template/building_template007b_-2368_-1536_-96","maps/gm_construct/building_template/building_template010c_-2368_-1536_-96","maps/gm_construct/building_template/building_template010b_-3072_-1472_-96","maps/gm_construct/building_template/building_template007d_-3072_-1472_-96","maps/gm_construct/building_template/building_template007c_-3072_-1472_-96","maps/gm_construct/building_template/building_template007c_-2304_-2702_2400","gm_construct/grass_13","gm_construct/grass-sand_13","gm_construct/flatgrass_2"}
maps["gm_flatgrass"]={"tools/toolsskybox","gm_construct/flatgrass","tools/toolsskybox2d","maps/gm_flatgrass/concrete/concretefloor028c_0_1312_-12736","brick/brickwall053d","brick/brickwall003a_construct","maps/gm_flatgrass/concrete/concretefloor028c_0_96_-12032","maps/gm_flatgrass/concrete/concretefloor028a_0_-31_-12736","maps/gm_flatgrass/concrete/concretefloor028a_0_96_-12032","concrete/concreteceiling003a","maps/gm_flatgrass/concrete/concretefloor028c_0_480_-12736","maps/gm_flatgrass/concrete/concretefloor028c_0_992_-12736","gm_construct/flatsign","maps/gm_flatgrass/concrete/concretefloor028c_0_-1439_-12736","maps/gm_flatgrass/concrete/concretefloor028c_0_-991_-12736","maps/gm_flatgrass/concrete/concretefloor028c_0_-543_-12736","gm_construct/citycard01"}
maps["rp_bangclaw"]={"concrete/concretefloor009a","concrete/concretefloor013a","concrete/concreteceiling003a","metal/metalfloor007a","metal/metalgrate013a","concrete/concretefloor023a","building_template/building_template003a","cs_havana/metal02","maps/rp_bangclaw_test22222/plaster/plasterwall005c_3208_509_-488","plaster/plasterwall042a","brick/brickwall037a","metal/citadel_metalwall074a","building_template/building_template013o","plaster/plasterwall008a","brick/infwllb","maps/rp_bangclaw_test22222/plaster/plasterwall005c_3224_-2651_560","cs_havana/concretefloor011a","metal/metaltruss008a","concrete/concretefloor016a","concrete/concretefloor008a","metal/metalwall004c","concrete/concretewall059d","concrete/concretewall006a","concrete/concretewall013f","cs_italy/brickwall01","concrete/concretewall001a","concrete/concretewall071a","concrete/concreteceiling002a","cs_italy/pwood1","wood/woodfloor005a","brick/brickwall040b","brick/brickwall045f","maps/rp_bangclaw_test22222/metal/prodventa_3208_509_-488","concrete/concretewall038d","concrete/concretewall037a","metal/metalfloor005a","concrete/concretefloor027a","environment maps/pipeset_metal","concrete/concretefloor001a","de_tides/tides_floor_wood","maps/rp_bangclaw_test22222/plaster/plasterwall043d_1048_1799_-864","brick/brickwall031d","brick/brickwall003d","brick/brickwall052d","cs_italy/tileroof01","maps/rp_bangclaw_test22222/metal/metalwall001b_3224_-2651_560","maps/rp_bangclaw_test22222/metal/metalwall001a_3224_-2651_560","cs_havana/woodm","maps/rp_bangclaw_test22222/de_piranesi/marblefloor06_3224_-2651_560","concrete/concretefloor011a","plaster/plasterceiling006a","building_template/building_template001a","wood/milwall017","maps/rp_bangclaw_test22222/metal/metalceiling005a_3224_-2651_560","maps/rp_bangclaw_test22222/metal/metalceiling005a_3208_509_-488","maps/rp_bangclaw_test22222/plaster/plasterwall046b_1048_1799_-864","maps/rp_bangclaw_test22222/plaster/plasterwall046b_3224_-2651_560","metal/metalwall004a","maps/rp_bangclaw_test22222/concrete/concretefloor005a_3224_-2651_560","brick/brickwall014a","building_template/building_template012n","cs_havana/ceiling01","plaster/plasterwall030b","brick/brickwall031a","brick/brickwall053a","de_chateau/brickhmrtr","de_chateau/brickh","plaster/plasterceiling002b","cs_havana/concrete01","brick/brickwall045a","props/carpetfloor003a","maps/rp_bangclaw_test22222/tile/tilefloor013a_3224_-2651_560","props/tarpaperroof002a","maps/rp_bangclaw_test22222/plaster/plasterwall042c_3224_-2651_560","wood/woodstair002c","plaster/plasterwall008f","concrete/concretewall070a","building_template/building_template020h","concrete/concretewall002a","concrete/prodstepfrnt","building_template/building_template019a","maps/rp_bangclaw_test22222/de_dust/tilefloor02_3208_509_-488","cs_havana/woodf01","maps/rp_bangclaw_test22222/de_piranesi/marblefloor04_3224_-2651_560","plaster/plasterwall005a","maps/rp_bangclaw_test22222/metal/metalroof006a_3044_1624_-865","maps/rp_bangclaw_test22222/de_piranesi/marblefloor06_3208_509_-488","maps/rp_bangclaw_test22222/de_dust/tilefloor02_3224_-2651_560","plaster/wallpaper003b","building_template/building_template012a","maps/rp_bangclaw_test22222/plaster/plasterwall030c_1048_1799_-864","plaster/plasterwall043b","nature/grassfloor002a","building_template/courtyard_template006b","props/carpetfloor004a","maps/rp_bangclaw_test22222/tile/tilefloor010a_3224_-2651_560","maps/rp_bangclaw_test22222/metal/metalroof005a_3224_-2651_560","building_template/building_template012j","building_template/building_template012k","metal/metalwall030a","maps/rp_bangclaw_test22222/plaster/plasterwall005c_3044_1624_-865","maps/rp_bangclaw_test22222/plaster/plasterwall043d_3044_1624_-865","maps/rp_bangclaw_test22222/metal/metalceiling005a_1048_1799_-864","maps/rp_bangclaw_test22222/de_dust/tilefloor02_1048_1799_-864","concrete/concretewall007a","brick/brickwall048a","brick/brickwall026f","cs_havana/metal01","maps/rp_bangclaw_test22222/plaster/plasterwall046b_3208_509_-488","maps/rp_bangclaw_test22222/plaster/plasterwall043d_3208_509_-488","maps/rp_bangclaw_test22222/de_piranesi/marblefloor06_1048_1799_-864","maps/rp_bangclaw_test22222/plaster/offwllc_3044_1624_-865","building_template/roof_template001a","maps/rp_bangclaw_test22222/metal/prodventa_3224_-2651_560","maps/rp_bangclaw_test22222/metal/metalroof005a_3208_509_-488","stone/stonewall006a","concrete/concretefloor014a","metal/metalgrate013a2","maps/rp_bangclaw_test22222/de_piranesi/marblefloor06_3044_1624_-865","maps/rp_bangclaw_test22222/metal/metalroof008a_3224_-2651_560","maps/rp_bangclaw_test22222/tile/tilefloor012a_3224_-2651_560","props/carpetfloor001a","maps/rp_bangclaw_test22222/plaster/plasterwall043d_3224_-2651_560","building_template/building_template013l","maps/rp_bangclaw_test22222/tile/tilewall007e_1048_1799_-864","plaster/plasterwall030a","maps/rp_bangclaw_test22222/building_template/building_template012d_3224_-2651_560","maps/rp_bangclaw_test22222/wood/woodwall009a_3208_509_-488","concrete/concreteceiling004a","metal/metalfloor010a","tools/toolsblack","maps/rp_bangclaw_test22222/metal/metalwall001a_3208_509_-488","maps/rp_bangclaw_test22222/metal/metalwall001b_3208_509_-488","maps/rp_bangclaw_test22222/wood/woodfloor008a_3224_-2651_560","cs_assault/assault_train_sched01","metal/prodventb","maps/rp_bangclaw_test22222/metal/metalroof006a_3224_-2651_560","metal/metalfence001a","maps/rp_bangclaw_test22222/wood/woodwall009a_3224_-2651_560","wood/woodwall032g","cs_italy/wallpaper03","maps/rp_bangclaw_test22222/tile/tilewall007e_3208_509_-488","maps/rp_bangclaw_test22222/tile/tilewall007e_3224_-2651_560","cs_havana/tunnelplaster02","maps/rp_bangclaw_test22222/metal/metalroof004a_3224_-2651_560","maps/rp_bangclaw_test22222/metal/metalroof004a_3208_509_-488","maps/rp_bangclaw_test22222/metal/metalroof004a_1048_1799_-864","metal/milroof002","maps/rp_bangclaw_test22222/wood/woodfloor008a_3044_1624_-865","props/metalfreezerstainless01a","concrete/concretefloor031a","cs_italy/picrate2","maps/rp_bangclaw_test22222/metal/prodventa_3044_1624_-865","maps/rp_bangclaw_test22222/wood/woodfloor007a_3224_-2651_560","maps/rp_bangclaw_test22222/brick/brickwall031g_1048_1799_-864","rp_bangclaw/eez_creds","tile/infroofb","brick/brickwall004a","maps/rp_bangclaw_test22222/metal/prodventa_1048_1799_-864","de_cbble/woodceiling01","concrete/concretewall008a","tools/toolsskybox","maps/rp_bangclaw_test22222/nature/blendsandgrass008a_wvt_patch","maps/rp_bangclaw_test22222/concrete/concretefloor033k_c17_3224_-2651_560","maps/rp_bangclaw_test22222/concrete/concretefloor033k_c17_3208_509_-488","maps/rp_bangclaw_test22222/concrete/concretefloor033a_3224_-2651_560","brick/brickwall053d","maps/rp_bangclaw_test22222/nature/toxicslime002a_3208_509_-488","maps/rp_bangclaw_test22222/concrete/concretefloor033o_3224_-2651_560","nature/sewer_water001_bottom","maps/rp_bangclaw_test22222/nature/sewer_waterdarkfog_3208_509_-488","carpet/offflrb","concrete/concretewall041a","maps/rp_bangclaw_test22222/building_template/building_template012b_3208_509_-488","plaster/plasterceiling003a","plaster/wallpaper002a","maps/rp_bangclaw_test22222/nature/sewer_waterdarkfog_1048_1799_-864","maps/rp_bangclaw_test22222/concrete/concretefloor033a_1048_1799_-864","maps/rp_bangclaw_test22222/building_template/building_template003b_1048_1799_-864","maps/rp_bangclaw_test22222/tile/tilefloor013a_1048_1799_-864","cs_havana/concrete02b","maps/rp_bangclaw_test22222/plaster/offwllc_3208_509_-488","maps/rp_bangclaw_test22222/concrete/concretefloor038c_3208_509_-488","maps/rp_bangclaw_test22222/concrete/concretewall041c_3208_509_-488","maps/rp_bangclaw_test22222/concrete/concretewall041c_3044_1624_-865","maps/rp_bangclaw_test22222/concrete/concretewall041c_1048_1799_-864","brick/brickwall036a","concrete/concretefloor010a","concrete/concretewall059f","building_template/building_template003i","maps/rp_bangclaw_test22222/brick/brickwall045c_3224_-2651_560","maps/rp_bangclaw_test22222/brick/brickwall045c_3208_509_-488","maps/rp_bangclaw_test22222/concrete/concretefloor038c_3224_-2651_560","de_nuke/nuke_metalfloor_01","building_template/building_template017o","maps/rp_bangclaw_test22222/building_template/building_template017c_3224_-2651_560","maps/rp_bangclaw_test22222/building_template/building_template017b_3208_509_-488","building_template/building_template014l","rp_bangclaw/saxguy","maps/rp_bangclaw_test22222/building_template/courtyard_template006e_3224_-2651_560","nature/water_coast01_beneath","maps/rp_bangclaw_test22222/nature/water_coast01_3224_-2651_560","maps/rp_bangclaw_test22222/building_template/building_template017b_3224_-2651_560","maps/rp_bangclaw_test22222/plaster/plasterwall030c_3224_-2651_560","plaster/wallpaper002b","cs_italy/wallpap04b","brick/brickwall037c","brick/brickwall037d","building_template/building_template020g","maps/rp_bangclaw_test22222/building_template/building_template020e_3224_-2651_560","maps/rp_bangclaw_test22222/brick/brickwall031g_3224_-2651_560","building_template/building_template019f","building_template/building_template001i","maps/rp_bangclaw_test22222/building_template/building_template001b_3224_-2651_560","brick/brickwall026d","maps/rp_bangclaw_test22222/plaster/plasterwall043c_3208_509_-488","concrete/concretewall019a","maps/rp_bangclaw_test22222/metal/metalroof006a_3208_509_-488","brick/brickwall045d","maps/rp_bangclaw_test22222/plaster/plasterwall043c_3224_-2651_560","maps/rp_bangclaw_test22222/plaster/plasterwall046b_3044_1624_-865","concrete/concretewall004c","maps/rp_bangclaw_test22222/metal/metalroof006a_1048_1799_-864","brick/brickwall048i","brick/brickwall048d","concrete/concretefloor015a_c17","maps/rp_bangclaw_test22222/plaster/plasterwall030c_3044_1624_-865","maps/rp_bangclaw_test22222/de_piranesi/woodfloor02_3224_-2651_560","plaster/wallpaper003a","cs_italy/wallpaper02","maps/rp_bangclaw_test22222/plaster/plasterwall030c_3208_509_-488","concrete/concretewall004b","maps/rp_bangclaw_test22222/concrete/concretefloor019a_3224_-2651_560","maps/rp_bangclaw_test22222/effects/offgaragedr_3224_-2651_560","brick/brickwall014l","maps/rp_bangclaw_test22222/brick/brickwall014f_3224_-2651_560","maps/rp_bangclaw_test22222/metal/metalwall001d_3224_-2651_560","maps/rp_bangclaw_test22222/concrete/concretefloor005a_3208_509_-488","maps/rp_bangclaw_test22222/metal/metalwall001c_3224_-2651_560","concrete/concretefloor006a","maps/rp_bangclaw_test22222/glass/glasswindowbreak070a_3224_-2651_560","maps/rp_bangclaw_test22222/brick/brickwall014c_3224_-2651_560","maps/rp_bangclaw_test22222/brick/brickwall014e_3224_-2651_560","maps/rp_bangclaw_test22222/metal/metalwall004e_3224_-2651_560","building_template/building_template002k","building_template/building_template002h","building_template/building_template002a","maps/rp_bangclaw_test22222/building_template/building_template002b_3224_-2651_560","maps/rp_bangclaw_test22222/props/rubberfloor009a_3224_-2651_560","plaster/plasterwallpaper003a","maps/rp_bangclaw_test22222/brick/brickwall045c_1048_1799_-864","maps/rp_bangclaw_test22222/building_template/building_template001b_1048_1799_-864","maps/rp_bangclaw_test22222/building_template/building_template003b_3224_-2651_560","maps/rp_bangclaw_test22222/building_template/building_template003b_3208_509_-488","concrete/concretefloor030a","plaster/plasterceiling007a"}
maps["rp_glife_rockford3"]={"wood/woodstair002c","maps/rp_glife_rockford3/unlimited/offutile_11576_-2160_144","concrete/concretefloor001a","de_train/train_cement_step_03","___error","maps/rp_glife_rockford3/agency/concrete/concretewall01_-7001_3056_317","maps/rp_glife_rockford3/concrete/urban_sidewalk_02a_-2926_1511_136","de_chateau/stairse","stone/tidstairsafrnt","building_template/building_template007a","maps/rp_glife_rockford3/stone/stonewall017c_3130_7897_-56","metal/metalwall030a","maps/rp_glife_rockford3/agency/concrete/concretewall01_-7934_3515_136","maps/rp_glife_rockford3/agency/concrete/concretewall01_-8024_3508_494","de_chateau/stairconcrete02","maps/rp_glife_rockford3/agency/concrete/concretewall01_-5623_2935_8","metal/citadel_metalwall074a","metal/metalfloor005a","maps/rp_glife_rockford3/agency/wall/marble01_-7001_3056_317","maps/rp_glife_rockford3/ocrp/urban/window3_-7001_3056_317","maps/rp_glife_rockford3/agency/concrete/concretewall01_-7049_2615_-432","maps/rp_glife_rockford3/agency/concrete/concretewall01_-7479_4702_48","maps/rp_glife_rockford3/agency/concrete/concretewall01_-7039_4288_295","maps/rp_glife_rockford3/ocrp/urban/window3_-7479_4702_48","maps/rp_glife_rockford3/ocrp/urban/window3_-7039_4288_295","cs_havana/tunnelplaster02b","maps/rp_glife_rockford3/agency/wall/conctrim01_-4805_3664_71","maps/rp_glife_rockford3/agency/concrete/concretewall01_-4805_3664_71","stone/infwllftop","maps/rp_glife_rockford3/agency/wall/marble01_-5625_3568_216","maps/rp_glife_rockford3/ocrp/urban/window3_-5625_3568_216","concrete/concretewall001a","de_train/train_metalceiling_02","cs_italy/stonewall02","maps/rp_glife_rockford3/agency/wall/marble01_-7008_3352_136","maps/rp_glife_rockford3/ocrp/urban/window3_-7008_3352_136","maps/rp_glife_rockford3/agency/wall/marble01_-7934_3515_136","maps/rp_glife_rockford3/ocrp/urban/window3_-7934_3515_136","maps/rp_glife_rockford3/agency/concrete/concretewall01_-7055_3384_792","stone/stonewall050a","de_cbble/outwall02b","de_cbble/outwall02d","de_cbble/outwall02","maps/rp_glife_rockford3/agency/wall/marble01_-5347_3733_136","maps/rp_glife_rockford3/ocrp/urban/window3_-5347_3733_136","maps/rp_glife_rockford3/ocrp/urban/window3_-5904_3720_136","maps/rp_glife_rockford3/agency/wall/marble01_-5904_3720_136","maps/rp_glife_rockford3/agency/wall/marble01_-7261_3995_136","maps/rp_glife_rockford3/ocrp/urban/window3_-7261_3995_136","building_template/building_template021j","metal/metaltruss016a","maps/rp_glife_rockford3/agency/wall/marble01_-6504_3793_136","maps/rp_glife_rockford3/ocrp/urban/window3_-6713_6497_72","de_nuke/nukroofa","maps/rp_glife_rockford3/tile/urban_countertop01b_11448_1184_73","maps/rp_glife_rockford3/tile/urban_countertop01b_11448_740_73","cs_havana/woodm","nature/gravelfloor002a","metal/metalwall026a_c17","cs_assault/assault_brick2a","cs_italy/cr_miscwood2b","maps/rp_glife_rockford3/agency/wall/marble01_-6742_3951_792","realworldtextures2/wall/wallpaper_52","maps/rp_glife_rockford3/agency/wall/marble01_-7479_4702_48","maps/rp_glife_rockford3/agency/wall/conctrim01_-8024_3508_494","maps/rp_glife_rockford3/agency/ceiling/ceilingplaster01_-8024_3508_494","maps/rp_glife_rockford3/agency/floor/marble01a_-9728_3640_80","metal/metaldoor032a","concrete/concretefloor008a","de_tides/tides_floor_stone_1","maps/rp_glife_rockford3/bridge/se1_concrete_flat_01_-3999_-4120_70","carpet/offflrb","maps/rp_glife_rockford3/cs_assault/pavement001a_3039_5266_80","maps/rp_glife_rockford3/cs_assault/pavement001a_5859_5441_104","de_cbble/grounddirt","maps/rp_glife_rockford3/pichot/grass/pichotgrass_wvt_patch","maps/rp_glife_rockford3/statua/nature/rockfordgrass1_noprop_wvt_patch","maps/rp_glife_rockford3/ocrp/urban/window3_-8020_5419_312","maps/rp_glife_rockford3/ocrp/urban/window3_-8344_5587_48","brick/brickwall045f","maps/rp_glife_rockford3/ocrp/urban/window3_-9128_6473_72","maps/rp_glife_rockford3/ocrp/urban/window3_-9078_4680_72","maps/rp_glife_rockford3/env/stone/marble_veinblack_6323_7202_240","maps/rp_glife_rockford3/env/stone/marble_veinblack_3215_7335_240","maps/rp_glife_rockford3/wood/woodfloor008a_-1936_4822_16","maps/rp_glife_rockford3/ocrp/urban/window3_-8411_5076_48","maps/rp_glife_rockford3/de_piranesi/marblefloor08_10744_-2472_208","concrete/concretefloor024a","maps/rp_glife_rockford3/highrise/se1_acoustic_stairwell_ceiling_01_-3999_-4120_70","maps/rp_glife_rockford3/wood/offdesktop_11349_3000_72","maps/rp_glife_rockford3/metal/metalwall031a_-8298_-3964_80","metal/metaltruss009a","maps/rp_glife_rockford3/wood/offdesktop_-4007_2006_72","maps/rp_glife_rockford3/wood/offdesktop_11448_1184_73","cs_italy/pwood1","maps/rp_glife_rockford3/ocrp/glass2_-4344_5232_96","maps/rp_glife_rockford3/ocrp/glass2_-7492_5490_48","metal/metalwall018a","maps/rp_glife_rockford3/de_piranesi/marblefloor08_-1395_5845_112","maps/rp_glife_rockford3/unlimited/offutile_11384_-1776_80","maps/rp_glife_rockford3/wood/offdesktop_-2131_1727_136","maps/rp_glife_rockford3/wood/offdesktop_-1978_2412_136","maps/rp_glife_rockford3/wood/offdesktop_-1299_1895_136","building_template/courtyard_template001a","building_template/roof_template001a","brick/brickwall037a","maps/rp_glife_rockford3/env/brush/floors/floor_dark_wood_5894_-2903_96","maps/rp_glife_rockford3/concrete/concretefloor011a_c17_5859_5441_104","maps/rp_glife_rockford3/tile/tile_mall_floor00_-9971_5571_48","maps/rp_glife_rockford3/ocrp/urban/window3_-7372_5547_312","maps/rp_glife_rockford3/metal/metalroof008a_-7055_3384_792","maps/rp_glife_rockford3/realworldtextures2/tile/tile_09_5859_5441_104","maps/rp_glife_rockford3/agency/floor/woodpanel01_5543_5723_104","maps/rp_glife_rockford3/agency/floor/woodpanel01_5547_5329_104","concrete/concretefloor026a","maps/rp_glife_rockford3/concrete/concretefloor011a_c17_5546_-3121_96","maps/rp_glife_rockford3/agency/carpet/carpet_black01_2969_5809_104","maps/rp_glife_rockford3/agency/floor/woodpanel01_3801_5471_104","de_tides/tides_floor_wood","maps/rp_glife_rockford3/realworldtextures2/tile/tile_09_2695_7627_240","maps/rp_glife_rockford3/agency/floor/woodpanel01_2372_7736_104","maps/rp_glife_rockford3/agency/floor/woodpanel01_2394_7416_104","maps/rp_glife_rockford3/agency/floor/woodpanel01_2734_7391_104","maps/rp_glife_rockford3/realworldtextures2/tile/tile_09_2734_7391_104","maps/rp_glife_rockford3/agency/carpet/carpet_black01_5662_7893_104","maps/rp_glife_rockford3/agency/floor/woodpanel01_6124_7937_104","maps/rp_glife_rockford3/realworldtextures2/tile/tile_09_6271_7323_104","maps/rp_glife_rockford3/agency/carpet/carpet_black01_6271_7323_104","metal/metalwall018b","maps/rp_glife_rockford3/metal/metalwall032g_-7899_-5029_85","maps/rp_glife_rockford3/metal/metalwall032d_-7899_-5029_85","de_train/train_brick_wall_04","maps/rp_glife_rockford3/tile/tile_mall_floor00_-9128_6473_72","wood/inffence01","maps/rp_glife_rockford3/building_template/building_trainstation_template002d_-7372_5547_312","building_template/building_template029c","maps/rp_glife_rockford3/building_template/building_trainstation_template002d_-4344_5232_96","maps/rp_glife_rockford3/building_template/building_trainstation_template002d_-4240_5296_216","maps/rp_glife_rockford3/building_template/building_trainstation_template002d_-4248_5824_216","maps/rp_glife_rockford3/building_template/building_trainstation_template002d_-6713_6497_72","maps/rp_glife_rockford3/building_template/building_trainstation_template002d_-4773_6487_72","maps/rp_glife_rockford3/building_template/building_trainstation_template002d_-6415_3907_728","de_train/train_cement_step_04","props/rubberroof002a","wood/woodshelf008a","metal/metalrail004a","building_template/building_template028a","maps/rp_glife_rockford3/wood/offdesktop_-3021_4073_90","concrete/concretewall007f","metal/metalhull010b","props/metalstainless01","de_chateau/intbrickktrima","props/rubberfloor004a","maps/rp_glife_rockford3/wood/woodfloor008a_3794_5414_-56","maps/rp_glife_rockford3/wood/offdesktop_11261_2748_7","maps/rp_glife_rockford3/agency/concrete/concretewall01_-6713_6497_72","maps/rp_glife_rockford3/agency/concrete/concretewall01_-9128_6473_72","wood/woodwall005a","maps/rp_glife_rockford3/de_piranesi/marblefloor06_-5650_1436_196","maps/rp_glife_rockford3/wood/woodfloor008a_-5650_1436_196","maps/rp_glife_rockford3/wood/woodfloor008a_-6161_1442_196","maps/rp_glife_rockford3/de_piranesi/marblefloor06_-6161_1442_196","de_nuke/nuke_metalgrate_01","wood/woodwall011a","maps/rp_glife_rockford3/ocrp/glass2_3116_7711_104","maps/rp_glife_rockford3/intro/se1_metal_stainless_generic_01_5543_5723_104","maps/rp_glife_rockford3/ocrp/glass2_6124_7937_104","maps/rp_glife_rockford3/concrete/concretefloor028a_5547_5329_104","maps/rp_glife_rockford3/concrete/concretefloor028a_5543_5723_104","maps/rp_glife_rockford3/intro/se1_metal_stainless_generic_01_5859_5441_104","maps/rp_glife_rockford3/metal/metalroof006a_3215_7335_240","maps/rp_glife_rockford3/realworldtextures2/tile/tile_09_3215_7335_240","maps/rp_glife_rockford3/agency/carpet/carpet_black01_2695_7627_240","maps/rp_glife_rockford3/realworldtextures2/tile/tile_09_6323_7202_240","maps/rp_glife_rockford3/agency/carpet/carpet_black01_5712_7234_240","maps/rp_glife_rockford3/wood/woodfloor008a_6323_7202_240","maps/rp_glife_rockford3/sgtsicktextures/bk_wallext_02_-3869_7152_75","maps/rp_glife_rockford3/stone/counter01_-4288_7634_75","maps/rp_glife_rockford3/sgtsicktextures/bk_wallext_02_-4288_7634_75","maps/rp_glife_rockford3/wood/offdesktop_-5829_8443_80","maps/rp_glife_rockford3/realworldtextures/newer/2/marble_2_02_-7049_2615_-432","maps/rp_glife_rockford3/stone/counter01_-3869_7152_75","maps/rp_glife_rockford3/realworldtextures/newer/2/marble_2_02_-10064_3648_80","maps/rp_glife_rockford3/stone/counter01_-4841_8175_16","de_train/train_cementwear_01","maps/rp_glife_rockford3/env/stone/marble_veinblack_3039_5266_80","maps/rp_glife_rockford3/env/stone/marble_veinblack_2969_5809_104","maps/rp_glife_rockford3/wood/desk02_12112_7494_70","maps/rp_glife_rockford3/stone/counter01_-3700_7723_75","de_chateau/woodm","maps/rp_glife_rockford3/metal/metalwall031a_7406_-3135_96","brick/brickwall009a","wood/woodfloor005a","maps/rp_glife_rockford3/realworldtextures/newer/2/tile_2_05_10400_-2600_264","nature/gravelfloor001a","concrete/concretewall061a","maps/rp_glife_rockford3/de_piranesi/marblefloor08_-1395_5685_80","maps/rp_glife_rockford3/wood/woodfloor008a_2969_5809_104","maps/rp_glife_rockford3/wood/woodfloor008a_3801_5471_104","concrete/concretefloor006a","maps/rp_glife_rockford3/ocrp/glass2_-10623_5668_80","maps/rp_glife_rockford3/ocrp/glass2_-11597_6453_72","concrete/concreteceiling003a","de_train/train_metaltruss_01","concrete/concretefloor010a","de_train/train_cement_floor_01","maps/rp_glife_rockford3/ocrp/urban/window3_-3488_1845_136","maps/rp_glife_rockford3/building_template/building_template006a_-3488_1845_136","maps/rp_glife_rockford3/ocrp/urban/window3_-3730_2901_72","metal/metalwall018f","maps/rp_glife_rockford3/building_template/building_template006a_-3730_2901_72","maps/rp_glife_rockford3/building_template/building_template006a_-2108_2924_136","maps/rp_glife_rockford3/ocrp/urban/window3_-2108_2924_136","maps/rp_glife_rockford3/buildings/gen21_-1978_2412_136","maps/rp_glife_rockford3/ocrp/urban/window3_-2131_1727_136","maps/rp_glife_rockford3/metal/offelevdrsa_-2131_1727_136","maps/rp_glife_rockford3/buildings/gen21_-2131_1727_136","maps/rp_glife_rockford3/buildings/gen21_-1907_-3922_80","maps/rp_glife_rockford3/ocrp/urban/window3_-7643_1198_72","maps/rp_glife_rockford3/building_template/building_template006a_-7643_1198_72","metal/metalwall032a","metal/metalwall032f","maps/rp_glife_rockford3/ocrp/urban/window3_-2926_1511_136","maps/rp_glife_rockford3/buildings/gen21_-1299_1895_136","maps/rp_glife_rockford3/ocrp/urban/window3_-3124_2359_136","maps/rp_glife_rockford3/ocrp/urban/window3_-1978_2412_136","brick/brickwall045a","maps/rp_glife_rockford3/metal/citadel_metalwall076a_-5904_3720_136","maps/rp_glife_rockford3/metal/citadel_metalwall076a_-5347_3733_136","de_piranesi/pi_grnmetalt","maps/rp_glife_rockford3/buildings/gen21_-3488_1845_136","maps/rp_glife_rockford3/buildings/gen21_-2926_1511_136","de_nuke/nukmetwallab","maps/rp_glife_rockford3/ocrp/urban/window3_-3021_4073_90","maps/rp_glife_rockford3/tile/tile_mall_floor00_-10771_4948_80","maps/rp_glife_rockford3/highrise/se1_garage_concretewall_07_-3021_4073_90","maps/rp_glife_rockford3/highrise/se1_garage_concretewall_07_-3580_3872_90","maps/rp_glife_rockford3/wood/offdesktop_-3580_3872_90","maps/rp_glife_rockford3/stone/counter01_-3989_7544_75","de_cbble/outwall04a","de_cbble/outwall04b","maps/rp_glife_rockford3/metal/metal_ext_10_-7899_-5029_85","concrete/concretefloor034a","maps/rp_glife_rockford3/plaster/offwllx_-3746_-4107_70","maps/rp_glife_rockford3/metal/metal_ext_10_-3999_-4120_70","stone/infflrc","maps/rp_glife_rockford3/metal/metalwall018e_-4056_-4800_81","maps/rp_glife_rockford3/metal/metalwall018e_-3999_-4120_70","maps/rp_glife_rockford3/metal/metalwall018e_-3746_-4107_70","metal/metalwall016a","maps/rp_glife_rockford3/metal/metalwall065e_-4056_-4800_81","metal/metalwall015b","maps/rp_glife_rockford3/metal/metalwall032g_-4056_-4800_81","metal/metalwall004a","maps/rp_glife_rockford3/metal/metalwall004d_-4056_-5184_81","maps/rp_glife_rockford3/metal/metalwall004d_-4056_-4800_81"}
maps["deathrun_diggerworld_b1"]={"clazstudio/diggerworld/castle_texture_03_floor","clazstudio/diggerworld/castle_texture_05_floor","clazstudio/diggerworld/dungeon_texture_03","clazstudio/diggerworld/castle_texture_04_floor","clazstudio/diggerworld/dark_castle_16","clazstudio/diggerworld/dark_castle_01","clazstudio/diggerworld/military_04","clazstudio/diggerworld/dark_castle_09","clazstudio/diggerworld/dungeon_texture_09_wood_box","clazstudio/diggerworld/dirt2","clazstudio/diggerworld/castle_texture_01_wall","clazstudio/diggerworld/dark_castle_18","clazstudio/diggerworld/colored3","clazstudio/diggerworld/dungeon_texture_12_floor","clazstudio/diggerworld/snow_dirt","clazstudio/diggerworld/dark_castle_15","clazstudio/diggerworld/lava","clazstudio/diggerworld/lava_bottom","tools/toolsskybox","clazstudio/colors/black","clazstudio/diggerworld/snow","clazstudio/diggerworld/ice_solid","clazstudio/diggerworld/castle_texture_02_wall","clazstudio/diggerworld/dungeon_texture_04_wall","clazstudio/diggerworld/dungeon_texture_02_floor","clazstudio/diggerworld/library_texture_07","clazstudio/diggerworld/wood9","clazstudio/diggerworld/glass_wood","clazstudio/diggerworld/dark_castle_14","clazstudio/diggerworld/dungeon_texture_13_floor","clazstudio/diggerworld/water","clazstudio/diggerworld/water_bottom","clazstudio/diggerworld/dungeon_texture_05_floor_element","clazstudio/diggerworld/grass_new3","clazstudio/diggerworld/grass-dirt_new1","clazstudio/diggerworld/city_exterior_18"}
maps["deathrun_prison_break_fixed"]={"concrete/concretefloor023a","maps/deathrun_prison_break_fixed/metal/metalcombine001_-4992_3577_480","metal/metalhull003a","de_train/train_metalceiling_02","metal/metaldoor013a","maps/deathrun_prison_break_fixed/metal/metaldoor059a_-4992_3577_480","concrete/concretewall010b","metal/metalhull010b","concrete/concretewall010c","maps/deathrun_prison_break_fixed/tile/tilefloor020a_-4448_3328_64","maps/deathrun_prison_break_fixed/tile/tilefloor020a_-4352_3824_64","concrete/concretewall006a","maps/deathrun_prison_break_fixed/metal/metalcombine001_-3944_3632_64","maps/deathrun_prison_break_fixed/metal/metalcombine001_-3936_2168_64","maps/deathrun_prison_break_fixed/metal/metalcombine001_-3944_2824_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall090a_-3936_2168_64","concrete/concretewall064c","maps/deathrun_prison_break_fixed/metal/metalcombine001_-3351_-896_64","concrete/concretewall071c","maps/deathrun_prison_break_fixed/metal/metalcombine001_-4352_3824_64","concrete/concretewall071f","maps/deathrun_prison_break_fixed/metal/metalcombine001_-4370_2336_80","maps/deathrun_prison_break_fixed/metal/metalcombine001_-4448_3328_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-2432_-979_-32","maps/deathrun_prison_break_fixed/metal/metalcombine001_-4480_1744_64","maps/deathrun_prison_break_fixed/metal/metalcombine001_-4352_2768_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall090a_-4370_2336_80","maps/deathrun_prison_break_fixed/metal/citadel_metalwall090a_-4992_3577_480","maps/deathrun_prison_break_fixed/metal/citadel_metalwall090a_-4352_3824_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall090a_-4448_3328_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall090a_-4352_2768_64","maps/deathrun_prison_break_fixed/metal/metalwall071a_-3944_3632_64","maps/deathrun_prison_break_fixed/metal/metalwall071a_-4224_4732_584","maps/deathrun_prison_break_fixed/tile/tilefloor009b_-2432_-979_-32","metal/metalwall030a","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-32_128_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-768_-272_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-496_128_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-768_-760_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-3944_2824_64","decals/jaysig","maps/deathrun_prison_break_fixed/metal/metaldoor059a_-3776_-896_64","maps/deathrun_prison_break_fixed/metal/metaldoor059a_-3351_-896_64","maps/deathrun_prison_break_fixed/metal/metaldoor059a_-2432_-979_-32","concrete/concretefloor020a","maps/deathrun_prison_break_fixed/metal/citadel_metalwall090a_-4480_1744_64","maps/deathrun_prison_break_fixed/metal/metalcombine001_-2432_-979_-32","tools/toolsskybox","maps/deathrun_prison_break_fixed/glass/glasswindow070c_-4352_2768_64","concrete/concretefloor016a","metal/metalwall060a","maps/deathrun_prison_break_fixed/metal/metalwall076a_-4352_2768_64","metal/metalgrate013a","maps/deathrun_prison_break_fixed/glass/glasswindow070c_-3944_2824_64","maps/deathrun_prison_break_fixed/tile/tilefloor016a_-3944_2824_64","maps/deathrun_prison_break_fixed/effects/combineshield/comshieldwall_-4208_1744_64","maps/deathrun_prison_break_fixed/effects/combineshield/comshieldwall_-3408_-640_64","maps/deathrun_prison_break_fixed/effects/combineshield/comshieldwall_-3936_2168_64","maps/deathrun_prison_break_fixed/effects/combineshield/comshieldwall_-4992_3577_480","concrete/concretewall071b","maps/deathrun_prison_break_fixed/effects/combineshield/comshieldwall_-4448_3328_64","maps/deathrun_prison_break_fixed/tile/tilefloor016a_-4352_2768_64","maps/deathrun_prison_break_fixed/effects/combineshield/comshieldwall_-3944_3632_64","maps/deathrun_prison_break_fixed/effects/combineshield/comshieldwall_-4352_3824_64","de_train/train_gravel_floor_01","maps/deathrun_prison_break_fixed/glass/glasswindow070c_-4370_2336_80","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-4352_2768_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-4370_2336_80","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-4992_3577_480","maps/deathrun_prison_break_fixed/glass/glasswindow070c_-4992_3577_480","maps/deathrun_prison_break_fixed/effects/combineshield/comshieldwall_-3944_2824_64","maps/deathrun_prison_break_fixed/effects/combineshield/comshieldwall_-4352_2768_64","maps/deathrun_prison_break_fixed/tile/tilefloor020a_-4352_2768_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-4448_3328_64","maps/deathrun_prison_break_fixed/effects/combineshield/comshieldwall_-4370_2336_80","maps/deathrun_prison_break_fixed/effects/combineshield/comshieldwall_-4480_1744_64","maps/deathrun_prison_break_fixed/glass/unbreakable_-2432_-979_-32","metal/metalpipe002a","concrete/concretefloor012a","concrete/concretefloor024a","concrete/concretewall010a","concrete/concretefloor010a","concrete/concretewall064b","concrete/concretefloor031a","decals/maanos","maps/deathrun_prison_break_fixed/glass/unbreakable_-768_128_64","maps/deathrun_prison_break_fixed/glass/unbreakable_-1040_128_64","maps/deathrun_prison_break_fixed/de_nuke/nuke_metaldoor_01_-1504_-896_80","maps/deathrun_prison_break_fixed/de_nuke/nukwindowa_-768_-272_64","maps/deathrun_prison_break_fixed/de_nuke/nukwindowa_-768_-760_64","maps/deathrun_prison_break_fixed/de_nuke/nukwindowa_-768_128_64","maps/deathrun_prison_break_fixed/de_nuke/nukwindowa_-4992_3577_480","maps/deathrun_prison_break_fixed/glass/unbreakable_-1040_-632_64","maps/deathrun_prison_break_fixed/glass/unbreakable_-768_-760_64","maps/deathrun_prison_break_fixed/glass/unbreakable_-768_-272_64","maps/deathrun_prison_break_fixed/glass/unbreakable_-1504_-896_80","maps/deathrun_prison_break_fixed/metal/metalwall045a_-1504_-896_80","maps/deathrun_prison_break_fixed/metal/metalwall031a_-1872_-640_64","glass/glasswindow020a","maps/deathrun_prison_break_fixed/glass/unbreakable_-1872_-640_64","maps/deathrun_prison_break_fixed/metal/metalwall045a_-1872_-640_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-1504_-896_80","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-1040_-632_64","maps/deathrun_prison_break_fixed/metal/metalwall031a_-1504_-896_80","de_nuke/nuke_metalvent","maps/deathrun_prison_break_fixed/glass/unbreakable_-4480_384_64","maps/deathrun_prison_break_fixed/glass/unbreakable_-4200_616_64","maps/deathrun_prison_break_fixed/metal/metalcombine001_-4480_1104_64","nature/sewer_water001_bottom","maps/deathrun_prison_break_fixed/nature/water_lowdirty001_-4480_384_64","maps/deathrun_prison_break_fixed/nature/water_lowdirty001_-2432_-979_-32","maps/deathrun_prison_break_fixed/metal/metalwall076a_-3351_-896_64","maps/deathrun_prison_break_fixed/tile/tilewall006b_-2432_-979_-32","maps/deathrun_prison_break_fixed/tile/tilewall006c_-2432_-979_-32","maps/deathrun_prison_break_fixed/glass/unbreakable_-3351_-896_64","maps/deathrun_prison_break_fixed/tile/tilewall006b_-3408_-640_64","maps/deathrun_prison_break_fixed/metal/metalcombine001_-3408_-640_64","maps/deathrun_prison_break_fixed/tile/tilewall006b_-1872_-640_64","maps/deathrun_prison_break_fixed/metal/metalwall071a_-3408_-640_64","maps/deathrun_prison_break_fixed/glass/unbreakable_-3408_-640_64","maps/deathrun_prison_break_fixed/metal/metalwall071a_-3351_-896_64","maps/deathrun_prison_break_fixed/tile/tilewall006c_-3351_-896_64","maps/deathrun_prison_break_fixed/tile/tilewall006c_-1872_-640_64","maps/deathrun_prison_break_fixed/tile/tilefloor009a_-2432_-979_-32","maps/deathrun_prison_break_fixed/metal/metalcombine001_-3776_-896_64","maps/deathrun_prison_break_fixed/glass/unbreakable_-3776_-896_64","maps/deathrun_prison_break_fixed/glass/unbreakable_-4192_-624_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall090a_-3776_-896_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall090a_-4424_-912_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall090a_-4192_-624_64","maps/deathrun_prison_break_fixed/metal/metalwall031a_-4424_-912_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-4192_-624_64","maps/deathrun_prison_break_fixed/glass/unbreakable_-4424_-912_64","maps/deathrun_prison_break_fixed/de_nuke/nuke_metaldoor_01_-4192_-624_64","maps/deathrun_prison_break_fixed/metal/metalwall031a_-4192_-624_64","maps/deathrun_prison_break_fixed/metal/citadel_metalwall076a_-4424_-912_64"}
maps["ttt_plaza_b7"]={"brick/brickfloor001a","brick/brickwall003a","maps/ttt_plaza_b7/tile/tilefloor011a_1104_-560_128","de_cbble/cobbleroad01","brick/brickwall045a","wood/infflra","wood/woodshelf002a","cs_havana/metal01","test_speakers/miwoodm","wood/woodwall006a","metal/metalrail012c","metal/metalhull010b","maps/ttt_plaza_b7/metal/metalpipe009a_840_496_256","maps/ttt_plaza_b7/de_chateau/intbrickk_224_-928_132","cs_havana/metal02","wood/woodwall032a","wood/woodstair002c","de_train/train_brick_wall_06","metal/metalstair004a","maps/ttt_plaza_b7/de_chateau/intbrickk_-400_-368_144","maps/ttt_plaza_b7/de_chateau/intbrickk_-352_-848_136","maps/ttt_plaza_b7/de_chateau/intbrickk_-1192_-704_136","concrete/concretefloor023a","maps/ttt_plaza_b7/metal/metalroof006a_2608_-1136_144","stone/stonewall013a","stone/stonewall029a","maps/ttt_plaza_b7/de_dust/tilefloor02_1104_-560_128","cs_havana/woodm","metal/metalstair004b","maps/ttt_plaza_b7/plaster/offwllc_-1760_0_144","cs_assault/assault_brick2b","maps/ttt_plaza_b7/de_chateau/intbrickk_2608_-1136_144","maps/ttt_plaza_b7/wood/woodfloor006a_0_0_464","cs_italy/tileroof01","maps/ttt_plaza_b7/de_chateau/intbrickk_0_0_464","de_chateau/roofa","stone/stonetrim004a","metal/metalladder001a","maps/ttt_plaza_b7/wood/offdesktop_516_0_132","maps/ttt_plaza_b7/de_dust/tilefloor02_704_-512_128","maps/ttt_plaza_b7/wood/offdesktop_1104_-560_128","maps/ttt_plaza_b7/de_piranesi/woodfloor01_840_496_256","maps/ttt_plaza_b7/de_piranesi/woodfloor01_704_320_124","maps/ttt_plaza_b7/tile/tilefloor011a_992_-960_132","metal/metalwall020a","props/metalduct003a","maps/ttt_plaza_b7/wood/offdesktop_1024_960_136","maps/ttt_plaza_b7/de_dust/tilefloor02_896_0_304","de_cbble/woodceiling01","maps/ttt_plaza_b7/props/metalduct001a_896_0_132","maps/ttt_plaza_b7/props/metalduct001a_840_496_256","maps/ttt_plaza_b7/props/metalduct001a_1024_400_256","maps/ttt_plaza_b7/wood/offdesktop_704_320_124","maps/ttt_plaza_b7/metal/metalpipe009a_704_320_124","cs_havana/woodf01","maps/ttt_plaza_b7/de_dust/tilefloor02_1136_-304_128","maps/ttt_plaza_b7/de_chateau/intbrickk_992_-960_132","maps/ttt_plaza_b7/wood/offdesktop_1088_384_124","maps/ttt_plaza_b7/wood/woodwall016a_2480_-560_144","environment maps/pipeset_metal","maps/ttt_plaza_b7/props/metalduct001a_1088_384_124","metal/metalwall074a","brick/brickwall003d","maps/ttt_plaza_b7/wood/offdesktop_840_496_256","maps/ttt_plaza_b7/tile/tilefloor011a_1268_0_132","maps/ttt_plaza_b7/wood/offdesktop_-400_-368_144","maps/ttt_plaza_b7/props/metalduct001a_704_320_124","maps/ttt_plaza_b7/plaster/offwllc_-752_-16_144","maps/ttt_plaza_b7/plaster/offwllc_-400_-368_144","maps/ttt_plaza_b7/wood/woodfloor006a_516_0_132","maps/ttt_plaza_b7/wood/offdesktop_984_1240_264","maps/ttt_plaza_b7/de_chateau/intbrickk_704_-512_128","maps/ttt_plaza_b7/de_chateau/intbrickk_2336_-560_144","maps/ttt_plaza_b7/de_chateau/intbrickk_1104_-560_128","maps/ttt_plaza_b7/de_dust/tilefloor02_1268_0_132","de_train/train_oldbrick_04","maps/ttt_plaza_b7/plaster/offwllc_224_-928_132","concrete/concretefloor012a","maps/ttt_plaza_b7/wood/woodstair002a_1536_1088_128","maps/ttt_plaza_b7/wood/offdesktop_280_1072_264","maps/ttt_plaza_b7/metal/metalpipe010a_1268_0_132","maps/ttt_plaza_b7/metal/metalpipe010a_1088_0_132","maps/ttt_plaza_b7/metal/metalpipe010a_708_0_132","maps/ttt_plaza_b7/metal/metalpipe010a_516_0_132","maps/ttt_plaza_b7/metal/metalpipe010a_896_0_132","wood/woodwall030a","maps/ttt_plaza_b7/plaster/offwllc_-1200_-16_144","maps/ttt_plaza_b7/de_piranesi/marblefloor06_2480_-560_144","maps/ttt_plaza_b7/metal/metalroof006a_2464_-32_144","maps/ttt_plaza_b7/metal/metalroof006a_2448_-800_144","maps/ttt_plaza_b7/metal/metalroof006a_2592_-960_144","maps/ttt_plaza_b7/metal/metalroof006a_2220_672_236","maps/ttt_plaza_b7/metal/metalroof006a_1104_-560_128","maps/ttt_plaza_b7/plaster/offwllc_-1192_-704_136","maps/ttt_plaza_b7/wood/offdesktop_896_0_132","maps/ttt_plaza_b7/wood/offdesktop_688_-256_128","maps/ttt_plaza_b7/de_dust/tilefloor02_2796_641_100","maps/ttt_plaza_b7/wood/offdesktop_2796_641_100","maps/ttt_plaza_b7/de_piranesi/marblefloor06_2796_641_100","maps/ttt_plaza_b7/wood/offdesktop_1136_-304_128","cs_havana/{curaila","maps/ttt_plaza_b7/de_chateau/intbrickk_-752_-16_144","maps/ttt_plaza_b7/de_chateau/intbrickk_-1760_0_144","wood/milwall012","maps/ttt_plaza_b7/metal/metalroof006a_2816_-224_144","halflife/{ladder2","wood/woodwall004c","maps/ttt_plaza_b7/wood/offdesktop_-352_-848_136","maps/ttt_plaza_b7/wood/offdesktop_-752_-16_144","maps/ttt_plaza_b7/wood/offdesktop_-1192_-704_136","maps/ttt_plaza_b7/plaster/offwllc_-352_-848_136","maps/ttt_plaza_b7/metal/metalpipe010a_704_320_124","maps/ttt_plaza_b7/metal/metalpipe010a_688_-256_128","wood/inffence01","maps/ttt_plaza_b7/metal/metalpipe003a_2464_-32_144","maps/ttt_plaza_b7/metal/offgaragedr_0_0_464","maps/ttt_plaza_b7/metal/metalpipe010a_1536_1088_128","maps/ttt_plaza_b7/metal/metalpipe010a_2336_-560_144","maps/ttt_plaza_b7/metal/offgaragedr_2336_-560_144","maps/ttt_plaza_b7/props/metalduct001a_2796_641_100","maps/ttt_plaza_b7/de_piranesi/woodfloor01_2796_641_100","maps/ttt_plaza_b7/wood/offdesktop_224_-928_132","maps/ttt_plaza_b7/wood/offdesktop_-1200_-16_144","maps/ttt_plaza_b7/wood/offdesktop_992_-960_132","maps/ttt_plaza_b7/metal/metalpipe010a_376_608_136","maps/ttt_plaza_b7/metal/metalpipe010a_0_0_132","maps/ttt_plaza_b7/metal/metalpipe003a_896_0_304","maps/ttt_plaza_b7/metal/metalpipe003a_1024_400_256","maps/ttt_plaza_b7/metal/metalpipe003a_2220_672_236","wood/offparticleboard","maps/ttt_plaza_b7/metal/metalpipe010a_1136_-304_128","maps/ttt_plaza_b7/de_piranesi/marblefloor06_2336_-560_144","maps/ttt_plaza_b7/metal/metalpipe009a_1024_400_256","wood/milwall015","maps/ttt_plaza_b7/wood/offdesktop_708_0_132","maps/ttt_plaza_b7/wood/offdesktop_672_376_256","maps/ttt_plaza_b7/wood/woodfloor006a_672_376_256","maps/ttt_plaza_b7/wood/woodstair002a_840_496_256","maps/ttt_plaza_b7/wood/woodstair002a_1024_400_256","maps/ttt_plaza_b7/wood/woodstair002a_1088_384_124","maps/ttt_plaza_b7/metal/metalroof006a_2796_641_100","maps/ttt_plaza_b7/metal/metalpipe003a_2796_641_100","maps/ttt_plaza_b7/metal/metalpipe009a_896_0_132","maps/ttt_plaza_b7/wood/offdesktop_1024_400_256","maps/ttt_plaza_b7/wood/woodfloor006a_1024_400_256","maps/ttt_plaza_b7/wood/woodfloor006a_1268_0_132","maps/ttt_plaza_b7/wood/offdesktop_896_0_304","maps/ttt_plaza_b7/wood/offdesktop_704_-512_128","maps/ttt_plaza_b7/wood/offdesktop_0_1016_136","maps/ttt_plaza_b7/de_chateau/intbrickk_1268_0_132","maps/ttt_plaza_b7/de_chateau/intbrickk_516_0_132","maps/ttt_plaza_b7/cs_assault/pavement001a_0_1016_136","maps/ttt_plaza_b7/metal/metalpipe003a_1104_-560_128","dev/dev_lowerwallmetal01d","maps/ttt_plaza_b7/tile/tilefloor011a_2336_-560_144","maps/ttt_plaza_b7/tile/tilefloor011a_1136_-304_128","maps/ttt_plaza_b7/wood/woodstair002a_984_1240_264","metal/metalrail009a","maps/ttt_plaza_b7/metal/metalpipe003a_1088_384_124","maps/ttt_plaza_b7/metal/metalpipe003a_992_-960_132","maps/ttt_plaza_b7/metal/metalpipe003a_840_496_256","maps/ttt_plaza_b7/metal/metalpipe003a_1024_960_136","maps/ttt_plaza_b7/metal/metalpipe003a_2528_-320_144","maps/ttt_plaza_b7/metal/metalroof006a_2936_1312_152","metal/metaldoor032a","maps/ttt_plaza_b7/de_piranesi/marblefloor06_2448_-800_144","maps/ttt_plaza_b7/wood/woodwall016a_2528_-320_144","maps/ttt_plaza_b7/de_piranesi/marblefloor06_2528_-320_144","maps/ttt_plaza_b7/wood/offdesktop_-1760_0_144","maps/ttt_plaza_b7/props/metalduct001a_1024_960_136","custom/noguns","stone/stonecolumn001a","plaster/plasterwall029d","maps/ttt_plaza_b7/plaster/plasterwall029c_2608_-1136_144","de_train/train_cement_floor_01","maps/ttt_plaza_b7/plaster/plasterwall029c_992_-960_132","props/rubberroof002a","maps/ttt_plaza_b7/metal/metalroof006a_1268_0_132","maps/ttt_plaza_b7/stone/stonefloor006a_2220_672_236","maps/ttt_plaza_b7/de_chateau/intbrickk_-1200_-16_144","maps/ttt_plaza_b7/metal/metalroof006a_2336_-560_144","maps/ttt_plaza_b7/metal/metalroof006a_2528_-320_144","tools/toolsskybox","maps/ttt_plaza_b7/de_train/blendgrassdirt001a_wvt_patch","maps/ttt_plaza_b7/cs_assault/pavement001a_984_1240_264","wood/woodwall028a","wood/woodwall037a","maps/ttt_plaza_b7/wood/woodfloor008a_2936_1312_152","de_train/train_cementwear_01","maps/ttt_plaza_b7/wood/woodfloor007a_1024_960_136","maps/ttt_plaza_b7/wood/woodfloor007a_984_1240_264","maps/ttt_plaza_b7/wood/woodfloor007a_280_1072_264","concrete/concretefloor036a","maps/ttt_plaza_b7/wood/wooddoor048a_1536_1088_128","maps/ttt_plaza_b7/cs_assault/leftcurb001_1536_1088_128","maps/ttt_plaza_b7/cs_assault/pavement001_1536_1088_128","maps/ttt_plaza_b7/cs_assault/rightcurb001_1536_1088_128","maps/ttt_plaza_b7/cs_assault/pavement001a_1536_1088_128","maps/ttt_plaza_b7/cs_assault/rightcurb001_984_1240_264","maps/ttt_plaza_b7/cs_assault/pavement001_984_1240_264","maps/ttt_plaza_b7/cs_assault/leftcurb001_984_1240_264","de_chateau/ceiling01","props/carpetfloor008a","maps/ttt_plaza_b7/wood/woodfloor007a_1024_400_256","maps/ttt_plaza_b7/wood/woodfloor007a_896_0_304","maps/ttt_plaza_b7/wood/woodfloor007a_1088_384_124","maps/ttt_plaza_b7/cs_assault/leftcurb001_1268_0_132","maps/ttt_plaza_b7/cs_assault/pavement001_1268_0_132","maps/ttt_plaza_b7/cs_assault/rightcurb001_1268_0_132","maps/ttt_plaza_b7/wood/wooddoor048a_280_1072_264","maps/ttt_plaza_b7/cs_assault/leftcurb001_0_1016_136","maps/ttt_plaza_b7/cs_assault/rightcurb001_0_1016_136","maps/ttt_plaza_b7/cs_assault/pavement001_0_1016_136","maps/ttt_plaza_b7/wood/woodfloor007a_672_376_256","maps/ttt_plaza_b7/tile/tilefloor010a_840_496_256","maps/ttt_plaza_b7/wood/woodfloor007a_704_320_124","maps/ttt_plaza_b7/cs_assault/rightcurb001_-1760_0_144","maps/ttt_plaza_b7/cs_assault/pavement001_-1760_0_144","maps/ttt_plaza_b7/cs_assault/leftcurb001_-1760_0_144","maps/ttt_plaza_b7/cs_assault/pavement001a_-1760_0_144","maps/ttt_plaza_b7/wood/wooddoor014a_-1200_-16_144","tile/tilefloor001a","props/carpetfloor006a","maps/ttt_plaza_b7/wood/woodfloor007a_2640_-672_144","maps/ttt_plaza_b7/wood/woodfloor006a_2336_-560_144","maps/ttt_plaza_b7/wood/woodfloor006a_896_0_304","maps/ttt_plaza_b7/tile/tilefloor018a_896_0_304","concrete/concretefloor024a","cs_havana/ceiling01","cs_italy/pwood1","plaster/infintwlla","de_dust/tilefloor01","maps/ttt_plaza_b7/wood/woodfloor007a_1136_-304_128","maps/ttt_plaza_b7/cs_assault/leftcurb001_992_-960_132","maps/ttt_plaza_b7/cs_assault/pavement001_1104_-560_128","maps/ttt_plaza_b7/cs_assault/rightcurb001_1104_-560_128","maps/ttt_plaza_b7/cs_assault/pavement001a_992_-960_132","maps/ttt_plaza_b7/cs_assault/pavement001_992_-960_132","maps/ttt_plaza_b7/cs_assault/rightcurb001_992_-960_132","maps/ttt_plaza_b7/wood/woodfloor006a_224_-928_132","maps/ttt_plaza_b7/de_chateau/interiortile02_704_-512_128","carpet/offflrb","tile/ceilingtilea","maps/ttt_plaza_b7/glass/offlightcover_-352_-848_136","metal/metaldoor028a","maps/ttt_plaza_b7/glass/offlightcover_-400_-368_144","maps/ttt_plaza_b7/glass/offlightcover_-752_-16_144","maps/ttt_plaza_b7/glass/offlightcover_-1200_-16_144","maps/ttt_plaza_b7/glass/offlightcover_-1192_-704_136","maps/ttt_plaza_b7/cs_assault/rightcurb001_-1192_-704_136","maps/ttt_plaza_b7/cs_assault/pavement001_-1192_-704_136","maps/ttt_plaza_b7/cs_assault/leftcurb001_-352_-848_136","maps/ttt_plaza_b7/cs_assault/rightcurb001_-352_-848_136","maps/ttt_plaza_b7/cs_assault/pavement001_-352_-848_136","maps/ttt_plaza_b7/cs_assault/leftcurb001_-1192_-704_136","maps/ttt_plaza_b7/cs_assault/pavement001a_-1192_-704_136"}
maps["deathrun_crash_medievil"]={"crash bandicoot medi 2/medisand","crash bandicoot/chinese_wood5","custom/crashbandicoot/mediwood","crash bandicoot medi 2/medicastlebrick grey","crash bandicoot medi 2/medicastlebrick grey fade","crash bandicoot medi 2/medicastlebrick c","crash bandicoot medi 2/medicastlebrick3","crash bandicoot/metal_crate_normal","crash bandicoot medi 2/medibridgeside","crash bandicoot medi 2/medicastlebrickdark","crash bandicoot/chinese_tile1","crash bandicoot medi 2/medicastlebrick2","crash bandicoot/wood_crate_normal","crash bandicoot/chinese_roof2","crash bandicoot medievil/metal_crate_arrow","crash bandicoot medi 2/medicastlebrickdark2","crash bandicoot medi 2/medibridgepaving","crash bandicoot/chinese_floor1","cs_italy/black","crash bandicoot medi 2/medicastlebrickdark fade","custom/crashbandicoot/egyptsand5","crash bandicoot medi 2/medistonefloor1","crash bandicoot/wood_crate_jump","crash bandicoot medi 2/medicastlebrick grey3","crash bandicoot medi 2/medicastlebrick greyborder","crash bandicoot medi 2/medicastlebrick grey2","crash bandicoot/wood_crate_tnt_top","cs_italy/plasterwall01","crash bandicoot medi 2/mediwood","cs_havana/metal02","nature/concretegravel001","crash bandicoot/wood_crate_tnt","metal/metalfence001a","crash bandicoot medievil/medi_pozo","crash bandicoot medi 2/medibridgepost","custom/crashbandicoot/medihousegate","custom/crashbandicoot/medihouseside","crash bandicoot medi 2/mediflags","custom/crashbandicoot/medistone3","custom/crashbandicoot/darknesschairtop","custom/crashbandicoot/medihouseroof","custom/crashbandicoot/meditentroof","crash bandicoot medi 2/red","custom/crashbandicoot/medisand","crash bandicoot medi 2/medicastlebrick c fade","crash bandicoot medi 2/mediwood2","custom/crashbandicoot/darknesscortex","crash bandicoot/wood_crate_nitro","crash bandicoot/wood_crate_nitro_top","metal/ibeam002","crash bandicoot medi 2/medibridgeposttop","crash bandicoot/chinese_roof1","crash bandicoot/cb_logo","tools/toolsskybox","crash bandicoot medi 2/mediwater","crash bandicoot medievil/medi_barro","icarus/glasschrome001","custom/crashbandicoot/bridgepost","maps/deathrun_crash_medievil/crash bandicoot medi 2/medisand_blend_wvt_patch","crash bandicoot medi 2/medistone","crash bandicoot medi 2/medistone2","crash bandicoot medi 2/medisand3","custom/crashbandicoot/medistone2","effects/black","crash bandicoot medi 2/medisand_blend","custom/crashbandicoot/meditentroofside","custom/crashbandicoot/meditentside"}
maps["nefedoni_rp"]={"metal/metaltruss008a","building_template/building_template029i","building_template/building_trainstation_template001c","concrete/concretefloor013a","plaster/wallpaper02","maps/nefedoni_rp/plaster/plasterwall042c_-336_-890_-48","building_template/building_template028j","hl2_leak/building_template/building_template011b","building_template/building_template003a","brick/brickwall045d","stone/stonewall005a","concrete/concretefloor015a","metal/metalfloor005a","wood/woodfloor005a","maps/nefedoni_rp/de_chateau/wall04pnl_-416_-1745_132","plaster/urban_plasterwall_04a","wood/woodwall032a","cs_assault/assault_metalcrate001b_red","maps/nefedoni_rp/de_chateau/wall04pnl_-498_1381_-376","concrete/prodwllh","hl2_leak/stone/stonewall035a","building_template/building_trainstation_template002k","hl2_leak/stone/stonewall037a","de_train/train_cement_step_03","storefront_template/storefront_template001g","concrete/concretestair006a","metal/metaldoor008a","building_template/building_trainstation_template002j","de_train/train_cement_step_04","de_train/train_metalceiling_02","metal/metalstair002a","building_template/building_trainstation_window001b","hl2_leak/stone/stonewall037d","metal/metalrail002a","de_nuke/nuke_walloffice_01","concrete/concretefloor006a","maps/nefedoni_rp/de_chateau/wall04pnl_1472_1268_-124","metal/metaltruss024a","agency/plaster/plasterwall04a","stone/stonewall014b","brick/brick_floor_02","de_train/train_cement_floor_01","props/rubberroof002a","cs_assault/concretefloor026a","plaster/urban_plasterwall_05b","maps/nefedoni_rp/plaster/offwllb_-284_-4660_52","maps/nefedoni_rp/de_chateau/wall04pnl_-896_-1280_-124","maps/nefedoni_rp/de_chateau/wall04pnl_2198_3278_-124","maps/nefedoni_rp/de_chateau/wall04pnl_794_3296_-124","maps/nefedoni_rp/nature/dt_blendmilground008_grass_wvt_patch","hl2_leak/brick/brickwall016b","hl2_leak/brick/brickwall016a","maps/nefedoni_rp/wood/woodstair002b_1912_2836_-124","concrete/concretefloor008a","concrete/concretefloor003c","tile/infflrb","maps/nefedoni_rp/concrete/concretefloor005a_1976_-4333_-124","maps/nefedoni_rp/concrete/concretefloor005a_214_-3998_-124","maps/nefedoni_rp/tile/milflr002_214_-3998_-124","maps/nefedoni_rp/concrete/concretefloor005a_-148_-3595_-129","maps/nefedoni_rp/tile/milflr002_3509_-3217_-124","maps/nefedoni_rp/concrete/concretefloor005a_3509_-3217_-124","concrete/concretewall001a","concrete/concreteceiling004a","maps/nefedoni_rp/de_chateau/wall04pnl_-214_1872_-459","maps/nefedoni_rp/building_template/building_template013d_3501_1230_524","metal/metaldoor045a","metal/metaltruss017a","metal/metalrail003a","maps/nefedoni_rp/de_chateau/wall04pnl02_-216_-4858_-108","brick/brickwall014a","maps/nefedoni_rp/brick/brickwall014b_2653_3998_406","maps/nefedoni_rp/brick/brickwall014b_2645_3652_-100","maps/nefedoni_rp/brick/brickwall014b_2769_2858_-129","building_template/building_template004a","building_template/building_template013l","concrete/concretewall013m","concrete/concretewall013a","wood/milflr002","maps/nefedoni_rp/metal/citadel_tilefloor016a_-336_-890_-48","plaster/plasterwall047b","brick/brickwall014l","maps/nefedoni_rp/brick/brickwall014b_3154_3752_260","maps/nefedoni_rp/brick/brickwall014b_3154_3350_260","signs/sign_books01","building_template/building_template013o","building_template/building_template005f","cs_italy/pwood1","metal/metalfloor006a","concrete/concretewall023b","hl2_leak/brick/brickwall015a","metal/metalstair001a","concrete/concretefloor034a","de_cbble/woodceiling01","metal/metalwall030a","hl2_leak/metal/metalhull009c","building_template/building_template029j","building_template/building_template009e","maps/nefedoni_rp/building_template/building_template007b_-55_-2808_452","building_template/building_template004f","hl2_leak/brick/brickwall015d","hl2_leak/brick/brickwall031a","hl2_leak/brick/brickwall031d","concrete/concretewall032d_c17","building_template/building_template011b","wood/trim02","building_template/building_trainstation_template002o","metal/metalgrate011a","metal/prodibeama","de_piranesi/woodceiling01","metal/metalstair004b","metal/metalgrate014a","maps/nefedoni_rp/building_template/building_template013d_2792_2519_244","de_train/train_cementwear_01","metal/metaltrack001a","concrete/milwall002","de_train/train_blinds_02","hl2_leak/stone/stonewall030b","hl2_leak/stone/stonewall031a","metal/metalwall014a","cs_assault/assault_warehouse_02","maps/nefedoni_rp/tile/tilefloor021a_2282_-1434_44","building_template/building_template004h","wood/woodstair002c","brick/brickwall053d","carpet/carpet02","metal/metaltruss014a","wood/urban_woodfloor01","de_chateau/ceiling02","plaster/urban_plasterwall_05d","hl2_leak/stone/stonewall037g","plaster/plasterwall043b","brick/brickwall055a","concrete/concretewall036a","building_template/building_template021j","wood/woodwall024a","maps/nefedoni_rp/wood/woodstair002b_3560_-4477_8","maps/nefedoni_rp/plaster/offwllb_2019_-2458_-92","maps/nefedoni_rp/plaster/offwllb_4112_-2548_52","maps/nefedoni_rp/tile/milflr002_1659_-4090_52","maps/nefedoni_rp/metal/metalroof006a_595_-463_432","maps/nefedoni_rp/metal/metalroof006a_2057_-2455_52","maps/nefedoni_rp/metal/metalroof006a_1970_-2746_52","maps/nefedoni_rp/metal/metalroof006a_2000_-3060_52","maps/nefedoni_rp/metal/metalroof006a_-55_-2808_452","maps/nefedoni_rp/tile/milflr002_2005_-4421_52","maps/nefedoni_rp/tile/milflr002_197_-4404_52","maps/nefedoni_rp/tile/milflr002_178_-4023_52","maps/nefedoni_rp/tile/milflr002_3396_-2664_52","maps/nefedoni_rp/tile/milflr002_3716_-2736_52","props/signhostel001a","concrete/concretewall065b","brick/brickwall040b","tile/ceilingtilea","plaster/plaster_ceiling_03","hl2_leak/metal/metalhull009b","brick/brickwall053e","hl2_leak/brick/brickwall053d","concrete/concretewall061b","building_template/building_template001i","maps/nefedoni_rp/building_template/building_template007b_1134_-2003_84","building_template/building_template007a","maps/nefedoni_rp/building_template/building_template007b_1160_-1945_228","maps/nefedoni_rp/building_template/building_template007b_1157_-2003_516","maps/nefedoni_rp/building_template/building_template007b_744_-2248_516","maps/nefedoni_rp/building_template/building_template007b_744_-2248_372","maps/nefedoni_rp/building_template/building_template007b_744_-2248_228","maps/nefedoni_rp/building_template/building_template007b_129_-2006_-124","maps/nefedoni_rp/building_template/building_template007b_744_-2248_84","maps/nefedoni_rp/building_template/building_template007b_1480_-2697_-92","maps/nefedoni_rp/de_chateau/wall04pnl02_-3631_-2679_136","cs_havana/metalwall085a","maps/nefedoni_rp/plaster/offwllb_3885_-2370_52","maps/nefedoni_rp/plaster/offwllb_4075_-2196_52","wood/milwall015","maps/nefedoni_rp/tile/tilefloor021a_-801_1560_-124","maps/nefedoni_rp/tile/tilefloor010a_1358_1683_-124","maps/nefedoni_rp/de_piranesi/woodfloor03_1655_1457_-124","concrete/concretewall034a","maps/nefedoni_rp/tile/milflr002_275_-4423_-108","concrete/concretefloor001a","plaster/plasterceiling008a","maps/nefedoni_rp/building_template/building_template007b_902_-2093_516","maps/nefedoni_rp/building_template/building_template007b_655_-1983_516","signs/sign_gunshop","de_train/de_train_plasterwall_01","concrete/concretefloor026a","props/signbillboard001a","maps/nefedoni_rp/metal/metalroof006a_1831_137_44","plaster/plasterceiling006a","brick/wall06","cs_assault/assault_brick1","maps/nefedoni_rp/metal/metalroof006a_2015_-848_211","maps/nefedoni_rp/building_template/building_template007b_555_-1384_-92","maps/nefedoni_rp/building_template/building_template007b_1359_-1370_-92","maps/nefedoni_rp/tile/tilefloor021a_2216_-1413_292","maps/nefedoni_rp/de_chateau/wall04pnl_1955_165_-124","brick/brickwall031d","metal/metalstair004a","maps/nefedoni_rp/metal/metalroof006a_1211_-741_-60","hl2_leak/brick/brickwall009c","building_template/building_template013a","nature/gravelfloor001a","props/metallockers003b","maps/nefedoni_rp/metal/metalroof006a_95_737_-129","maps/nefedoni_rp/de_chateau/wall04pnl_1771_173_-124","maps/nefedoni_rp/de_chateau/wall04pnl02_229_292_-124","maps/nefedoni_rp/de_chateau/wall04pnl02_784_-722_-124","maps/nefedoni_rp/plaster/offwllc_-896_-1280_-124","maps/nefedoni_rp/de_chateau/wall04pnl_-340_-1588_132","maps/nefedoni_rp/metal/metalroof006a_-2103_144_20","maps/nefedoni_rp/tile/prodflra_-3314_-2204_4","maps/nefedoni_rp/de_piranesi/marblefloor03_-957_-970_132","maps/nefedoni_rp/plaster/offwllb_-832_192_212","maps/nefedoni_rp/metal/citadel_tilefloor016a_-445_-481_-284","de_train/train_oldbrick_01","concrete/curba","concrete/concretewall041c","maps/nefedoni_rp/de_chateau/wall04pnl02_-3314_-2204_4","maps/nefedoni_rp/building_template/building_template013d_2248_132_48","hl2_leak/brick/brickwall009a","cs_havana/woodm","maps/nefedoni_rp/de_chateau/wall04pnl_-801_2316_-376","maps/nefedoni_rp/tile/tilewall006c_-1029_1865_-374","stone/stonewall014a","metal/metalwall021f","maps/nefedoni_rp/hl2_leak/glass/glasswindow066f_-1233_-3013_-60","maps/nefedoni_rp/hl2_leak/glass/glasswindow066g_-1696_-2835_-60","maps/nefedoni_rp/hl2_leak/glass/glasswindow066f_-1696_-2835_-60","maps/nefedoni_rp/glass/glasswindow007a_-1696_-2835_-60","maps/nefedoni_rp/hl2_leak/glass/glasswindow066f_-2019_-3102_-60","brick/brickwall_brightred","maps/nefedoni_rp/metal/citadel_tilefloor016a_-416_-884_132","maps/nefedoni_rp/de_chateau/wall04pnl02_-2848_-2128_-124","maps/nefedoni_rp/de_chateau/wall04pnl_-32_-2700_-92","maps/nefedoni_rp/de_chateau/wall04pnl02_1716_-3050_-92","maps/nefedoni_rp/de_chateau/wall04pnl_1904_-2748_-92","primerp/primerp_logo","concrete/concretewall059d","concrete/concretewall059e","maps/nefedoni_rp/plaster/offwllc_2113_-2997_-92","maps/nefedoni_rp/tile/tilefloor013a_-284_-4660_52","carpet/blue04","maps/nefedoni_rp/concrete/concretefloor038b_-539_4735_895","maps/nefedoni_rp/concrete/concretefloor038b_3134_4892_228","maps/nefedoni_rp/concrete/concretefloor038b_1524_4413_243","maps/nefedoni_rp/concrete/concretefloor038b_3033_4858_516","maps/nefedoni_rp/brick/brickwall014b_3148_3545_442","brick/brick_ext_10","maps/nefedoni_rp/plaster/offwllc_3800_-4768_-136","maps/nefedoni_rp/de_chateau/wall04pnl_2019_-2458_-92","maps/nefedoni_rp/de_chateau/wall04pnl02_2368_-3156_-92","maps/nefedoni_rp/plaster/plasterwall042c_2304_-2540_-92","maps/nefedoni_rp/building_template/building_trainstation_window001a_3785_1605_-124","maps/nefedoni_rp/building_template/building_trainstation_window001a_3547_1221_-124","maps/nefedoni_rp/plaster/offwllc_4236_-4803_12"}
maps["deathrun_aztecan_v5"]={"de_aztec/stonework05","tools/toolsskybox","de_aztec/stonework05a","de_aztec/stonework01g","de_aztec/stonework01mossa","cs_havana/stonework01","maps/projekt1/nature/mudfloor005a_1481_1531_231","de_aztec/road01_cheap","dev/dev_waterbeneath2","maps/projekt1/liquids/aztecwater_1481_1531_231","maps/projekt1/nature/mudfloor005a_-1277_224_200","metal/metalvent001a","nature/dirtfloor005c","metal/metalstair004b","de_aztec/stonework01c","maps/projekt1/liquids/aztecwater_-1277_224_200"}
maps["deathrun_goldfever"]={"cs_havana/woodm","cs_italy/pwood1","firewavezz/wood3","metal/metaltruss008a","cs_italy/woodbeam01","wood/woodstair002a","metal/metalceiling005a","concrete/metalwall001b_cheap","metal/metalfloor001b","metal/metalroof004a_c17","de_dust/pi_rust","wood/milflr002","firewavezz/wood6","de_piranesi/pi_wood1","metal/metalhull003a","metal/metalfloor001a","de_dust/pwtrim1","metal/metalwall014a_cheap","cs_havana/woodf01","metal/metaltrack001a","cs_italy/black","metal/chicken_wire001","props/rubberconveyerbelt001a","custom blend/western_sandy2","metal/metalroof005a","de_chateau/woodm","wood/woodwall003a","custom blend/western_sandy3","signs/hazard_yellow001","de_chateau/{cxarrow01","de_chateau/{cxb01","maps/deathrun_goldfever_a/custom blend/western_blend3_wvt_patch","metal/metalfloor002a","cs_assault/assault_vent_decal01","de_train/train_brick_wall_01","metal/metalhull010c","de_chateau/{cxa01","metal/metalvent001a","nature/dirtground008","firewavezz/cmark","tools/toolsskybox","nature/water_canals03_beneath","nature/water_canals03","de_cbble/door011","concrete/concreteceiling003a","de_cbble/concrete01","firewavezz/wood5","maps/deathrun_goldfever_a/custom blend/western_blend1_wvt_patch","metal/metalwall030a","metal/metalshutters001a","nature/water_coast01_beneath","nature/water_wasteland002a","glass/unbreakable","dev/dev_plasterwall001c","concrete/concretewall010a","nature/toxicslime002a","de_piranesi/pi_grnmetalt","decals/decalmetalvent006a","wood/woodstair002c","wood/milwall017","custom blend/western_blend2","custom blend/western_blend1","custom blend/western_blend3","firewavezz/wood2","tools/toolsnodraw","cable/rope"}
maps["deathrun_stone_extended"]={"cs_havana/concrete01","dev/valuesand30","tools/toolsskybox","de_aztec/stonework05a","de_aztec/stonework05","cs_havana/ground01grass","maps/deathrun_stone_extended/glass/unbreakable_-3715_-2627_141","tile/tilefloor005a","concrete/concretestair002a","dev/dev_hazzardstripe01a","maps/deathrun_stone_extended/de_dust/groundsand_blend_wvt_patch","de_aztec/stonework01g","de_aztec/stonework01c","cs_havana/woodm","de_train/train_grass_floor_01","de_aztec/stonework01mossc","cs_havana/stonework01","maps/deathrun_stone_extended/nature/infblendgrassdirt001a_wvt_patch","lights/white001","___error","cs_italy/stonewall02"}
maps["deathrun_minecraft_pyramid"]={"custom/mcwood","custom/mcobsidian","custom/mchalfblocktop","custom/mchalfblockside","custom/knife","custom/bhop","custom/easy","custom/mccobble","tools/toolsskybox","custom/mcstone","custom/mcglass","custom/ice2","custom/mcgrass","minecraft2/stone","minecraft/stone","minecraft/obsidian","custom/mcgravel","custom/mcdirtandgrass","custom/mcchest_top","custom/mcfurnace_front_off","custom/mcchest_large","minecraft/planks","custom/mcblu","custom/mcred","custom/mcworkbench_top","custom/mcworkbench_side2"}
maps["deathrun_iceworld_final"]={"nature/snowfloor001a","nature/snowwall003a","maps/deathrun_iceworld_v2/glass/offwndwb_-898_1967_-1200","metal/metalhull003a","wood/woodbeam002a","nature/snowfloor003a","nature/snowwall004a","maps/deathrun_iceworld_v2/fibbs/ice_0_416_-1472","maps/deathrun_iceworld_v2/fibbs/ice_-898_1967_-1200","concrete/offflrasnow","tools/toolsblack","maps/deathrun_iceworld_v2/metal/metalceiling005a_-898_1967_-1200","maps/deathrun_iceworld_v2/metal/metalceiling005a_0_416_-1472","metal/metalgrate002a","metal/metalhull010b","nature/sewer_water001_bottom","maps/deathrun_iceworld_v2/nature/sewer_water001_-898_1967_-1200","metal/metalladder001a","maps/deathrun_iceworld_v2/glass/offwndwb_0_416_-1472","tools/toolsskybox","maps/deathrun_iceworld_v2/nature/sewer_water001_0_416_-1472"}
local fpsboostcommands={["fps_max"]=0,["r_3dsky"]=0,["r_shadows"]=0,["r_eyemove"]=0,["cl_interp"]=0,["cl_timeout"]=600,["cl_detailfade"]=1,["cl_detaildist"]=2,["M9K_GasEffect"]=0,["cl_updaterate"]=16,["r_queued_ropes"]=1,["cl_interp_ratio"]=0,["mat_queue_mode"]=-1,["gmod_mcore_test"]=1,["cl_drawmonitors"]=0,["studio_queue_mode"]=1,["mat_disable_bloom"]=1,["r_drawmodeldecals"]=0,["r_shadowmaxrendered"]=0,["r_WaterDrawReflection"]=0,["r_WaterDrawRefraction"]=0,["r_waterforceexpensive"]=0,["cl_threaded_bone_setup"]=1,["r_shadowrendertotexture"]=0,["mat_bloom_scalefactor_scalar"]=1}
local c={}
--рубат забыл DBinder в меню стейт добавить
local PANEL={}
AccessorFunc(PANEL,"m_iSelectedNumber","SelectedNumber")
Derma_Install_Convar_Functions(PANEL)
function PANEL:Init()
	self:SetSelectedNumber(0)
	self:SetSize(60,30)
end 

function PANEL:UpdateText()
	local f=input.GetKeyName(self:GetSelectedNumber())
	if not f then f="NONE"end
	f=language.GetPhrase(f)
	self:SetText(f)
end 

function PANEL:DoClick()
	self:SetText("<Key>")
	input.StartKeyTrapping()
	self.Trapping=true
end

function PANEL:SetSelectedNumber(g)
	self.m_iSelectedNumber=g
	self:ConVarChanged(g)
	self:UpdateText()
	self:OnChange(g)
end

function PANEL:Think()
	if input.IsKeyTrapping()and self.Trapping then 
		local h=input.CheckKeyTrapping()
		if h then
			if h==KEY_ESCAPE then 
				self:SetValue(self:GetSelectedNumber())
			else 
				self:SetValue(h)
			end 
		self.Trapping=false 
		end 
	end 
	self:ConVarNumberThink()
end 

function PANEL:SetValue(e)
	self:SetSelectedNumber(e)
end 

function PANEL:GetValue()
	return self:GetSelectedNumber()
end 

function PANEL:OnChange()end

derma.DefineControl("DBinder","",PANEL,"DButton")

surface.CreateFont("chitfont18", {font = "Roboto", size = 18})
surface.CreateFont("chitfont22", {font = "Roboto", size = 22})

local j=27 
local function tab(l,m,n,o)
	local p=vgui.Create("DButton",o)
	p:SetFont("chitfont18")
	p:SetText(l)
	p:SetTextColor(Color(255,255,255))
	p:SetSize(m,25)
	p:SetPos(6,j)
	p.Paint=function(q,r,s)
		draw.RoundedBox(0,0,0,r,s,Color(35,35,35))
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,r,s)
		if p.Hovered then 
			draw.RoundedBox(0,0,0,r,s,Color(120,120,120,100))
		end 
	end 
	p.DoClick=n 
	j=j+27 
end 

local function checkbox(l,u,v,w,o,x)
	local y=o:Add("DCheckBoxLabel")
	y:SetPos(v,w)
	y:SetText(l)
	y:SetFont("chitfont18")
	y:SetTextColor(Color(255,255,255))
	y:SetValue(sett[u])
	if x then 
		y:SetToolTip(x)
	end 
	function y.Button:Paint(z,A)
		if self:GetChecked()then 
			surface.SetDrawColor(65,95,200)
			surface.DrawRect(0,0,z,A)
		end 
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,z,A)
	end 
	function y:OnChange()
	sett[u]=not sett[u]
	end 
end 

local function mixer(o,v,w,m,D,u)
	local E=vgui.Create("DColorMixer",o)
	E:SetPos(v,w)
	E:SetSize(m,D)
	E:SetAlphaBar(false)
	E:SetPalette(false)
	E:SetWangs(false)
	E:SetColor(sett[u])
	E.ValueChanged=function()
		sett[u]=E:GetColor()
	end 
end 

local function button(l,m,v,w,n,o,x)
	local p=vgui.Create("DButton",o)
	p:SetFont("chitfont18")
	p:SetText(l)
	p:SetTextColor(Color(255,255,255))
	p:SetSize(m,25)
	p:SetPos(v,w)
	if x then 
		p:SetToolTip(x)
	end 
	p.Paint=function(q,r,s)
		draw.RoundedBox(0,0,0,r,s,Color(35,35,35))
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,r,s)
		if p.Hovered then 
			draw.RoundedBox(0,0,0,r,s,Color(120,120,120,100))
		end 
	end 
	p.DoClick=n 
end 

local function slider(u,v,H,I,o)
	local J=vgui.Create("DNumSlider",o)
	J:SetPos(-101,v)
	J:SetSize(250,25)
	J:SetMin(H)
	J:SetMax(I)
	J:SetDecimals(0)
	J.TextArea:SetFont("chitfont18")
	J.TextArea:SetTextColor(Color(255,255,255))
	J:SetValue(sett[u])
	function J:OnValueChanged(d)
		sett[u]=d 
	end 
	function J.Slider.Knob:Paint()end 
	function J.Slider:Paint(w,h)
		surface.SetDrawColor(Color(100,100,255))
		surface.DrawRect(0,h/4,w*((self:GetParent():GetValue()-self:GetParent():GetMin())/self:GetParent():GetRange()),h/2)
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,h/4,w,h/2)
	end
end 

local function binder(l,u,v,w,L,o,x)
	local M=vgui.Create("DBinder",o)
	M:SetFont("chitfont18")
	M:SetText(l)
	M:SetTextColor(Color(255,255,255))
	M:SetSize(L,25)
	M:SetPos(v,w)
	if x then 
		M:SetToolTip(x)
	end 
	M.Paint=function(q,r,s)
		draw.RoundedBox(0,0,0,r,s,Color(35,35,35))
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,r,s)
		if M.Hovered then 
			draw.RoundedBox(0,0,0,r,s,Color(120,120,120,100))
		end 
	end 
	M.OnChange=function(N)
		sett[u]=N:GetValue()
		M:SetSize(select(1,surface.GetTextSize(M:GetText()))+10,25)
	end 
end

local function texts(name,x,y,frame)
	surface.SetFont("chitfont18")
	local text=vgui.Create("DButton",frame)
	text:SetSize(select(1,surface.GetTextSize(name)),15)
	text:SetPos(x,y)
	text:SetFont("chitfont18")
	text:SetText(name)
	text:SetTextColor(Color(255,255,255))
	text.Paint=function()end
end

local Q=vgui.Create("DFrame")
Q:SetSize(428,250)
Q:Center()
Q:SetTitle("")
Q:MakePopup()
Q:ShowCloseButton(false)
Q.Paint=function(q,r,s)
	draw.RoundedBox(0,0,0,r,s,Color(35,35,35))
	draw.RoundedBox(0,0,0,r,22,Color(45,45,45))
	draw.SimpleText("chitmod v1.7","chitfont18",5,2.5,Color(255,255,255))
	surface.SetDrawColor(Color(100,100,100))
	surface.DrawOutlinedRect(0,0,r,s)
	surface.SetDrawColor(Color(100,100,100))
	surface.DrawOutlinedRect(3,24,160,223)
end 

tab("Asus walls",80,function()
	if IsValid(c.tab)then c.tab:Remove()end 
	c.tab=vgui.Create("DPanel",Q)
	c.tab:SetPos(165,24)
	c.tab:SetSize(260,223)
	c.tab.Paint=function(q,r,s)
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,r,s)
	end 
	checkbox("Enabled","asuswalls",3,2,c.tab)
	binder("Key","asuswalls_key",3,20,36,c.tab)
	slider("asuswalls_alpha",41,0.1,0.9,c.tab)
	button("Scan map",74,183,3,function()
		if IsValid(c.tab)then c.tab:Remove()end 
		c.tab=vgui.Create("DPanel",Q)
		c.tab:SetPos(165,24)
		c.tab:SetSize(260,223)
		c.tab.Paint=function(q,r,s)
			surface.SetDrawColor(Color(100,100,100))
			surface.DrawOutlinedRect(0,0,r,s)
		end 
		local mapstable={}
		for _, v in pairs(file.Find("cache/workshop/*","GAME"))do
			steamworks.FileInfo(v:Replace(".gma",""),function(a) 
				mapstable[a["title"]]="cache/workshop/"..v
			end)
		end
		for _, v in pairs(file.Find("download/maps/*","GAME"))do
			mapstable[v:Replace(".bsp","")]="download/maps/"..v
		end
		for _, v in pairs(file.Find("maps/*.bsp","GAME"))do
			mapstable[v:Replace(".bsp","")]="maps/"..v
		end
		timer.Simple(3,function()
			if not IsValid(c.findmapscan)then return end
			function c.findmap(name)
				if IsValid(c.tab.mapscan)then c.tab.mapscan:Remove()end 
				c.tab.mapscan=vgui.Create("DScrollPanel",c.tab)
				c.tab.mapscan:SetPos(3,43)
				c.tab.mapscan:SetSize(254,177)
				c.tab.mapscan.Paint=function(q,r,s)
					surface.SetDrawColor(Color(100,100,100))
					surface.DrawOutlinedRect(0,0,r,s)
				end 
				local R=3 
				for S,f in pairs(mapstable)do 
						if string.find(S,name or"")then
							button(S,select(1,surface.GetTextSize(S))+10,3,R,function()
								local tabl={}
								local fl=file.Read(mapstable[S],"GAME")
								for _, v in pairs(string.Explode("\n", fl)) do
									--bля буду крутой скан
									if v:find("TOOLS/TOOLSNODRAW") then
										for _, v in pairs(string.Explode("maps/",v)) do
											tabl[#tabl + 1] = "maps/" .. v
											print("maps/"..v.." "..#string.Explode("/",v))
										end
									end
								end
								maps["[SCANNED]"..S]=tabl
								sett["asuswalls_map"]="[SCANNED]"..S
								if IsValid(c.tab)then c.tab:Remove()end 
							end,c.tab.mapscan)
						R=R+27 
					end
				end
			end
			c.findmap("")
		end)
		texts("Find map",3,1,c.tab)
		c.findmapscan=vgui.Create("DTextEntry",c.tab)
		c.findmapscan:SetPos(3,16)
		c.findmapscan:SetSize(254,25)
		c.findmapscan:SetText("")
		c.findmapscan.Paint=function(self,r,s)
			surface.SetDrawColor(25,25,25)
			surface.DrawRect(0,0,r,s)
			self:DrawTextEntryText(Color(255,255,255),Color(30,130,255),Color(255,255,255))
		end
		c.findmapscan.OnChange=function()
			if IsValid(c.tab.mapscan)then
				c.findmap(c.findmapscan:GetText())
			end
		end
	end,c.tab)
	c.tab.map=vgui.Create("DScrollPanel",c.tab)
	c.tab.map:SetPos(3,61)
	c.tab.map:SetSize(254,159)
	c.tab.map.Paint=function(q,r,s)
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,r,s)
	end 
	local R=3 
	for S,f in pairs(maps)do 
		button(S,select(1,surface.GetTextSize(S))+10,3,R,function()
		sett["asuswalls_map"]=S 
		end,c.tab.map)
		R=R+27 
	end
end,Q)

tab("Spam",49,function()
	if IsValid(c.tab)then c.tab:Remove()end 
	c.tab=vgui.Create("DPanel",Q)
	c.tab:SetPos(165,24)
	c.tab:SetSize(260,223)
	c.tab.Paint=function(q,r,s)
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,r,s)
	end
	checkbox("Enabled","spam",3,2,c.tab)
	checkbox("Ooc","spam_ooc",3,19,c.tab)
	c.spamtext=vgui.Create("DTextEntry",c.tab)
	c.spamtext:SetPos(3,37)
	c.spamtext:SetSize(214,25)
	c.spamtext:SetText("Text")
	c.spamtext.Paint=function(self,r,s)
		surface.SetDrawColor(25,25,25)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
		self:DrawTextEntryText(Color(255,255,255),Color(30,130,255),Color(255,255,255))
	end
	local f=sett["spam_texttable"]
	local function G()
		if IsValid(c.tab.text)then c.tab.text:Remove()end
		c.tab.text=vgui.Create("DScrollPanel",c.tab)
		c.tab.text:SetPos(3,64)
		c.tab.text:SetSize(254,155)
		c.tab.text.Paint=function(q,r,s)
			surface.SetDrawColor(Color(100,100,100))
			surface.DrawOutlinedRect(0,0,r,s)
		end
		local J=3
		for i=1,#f do
			button(f[i],select(1,surface.GetTextSize(f[i]))+10,3,J,function()
				table.remove(f,i)
				G()
			end,c.tab.text)
			J=J+27
		end
	end
	button("Add",38,219,37,function()
	    local valid = true
	    local text = c.spamtext:GetText()
        for _, v in pairs(f) do
			if f[_] == text then
				valid = false
			end
		end
		if valid then
			f[#f+1]=text
			G()
		end
	end,c.tab)
	G()
end,Q)

tab("CrossHair",77,function()
	if IsValid(c.tab)then c.tab:Remove()end 
	c.tab=vgui.Create("DScrollPanel",Q)
	c.tab:SetPos(165,24)
	c.tab:SetSize(260,223)
	c.tab.Paint=function(q,r,s)
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,r,s)
	end 
	checkbox("Enabled","crosshair",3,2,c.tab)
	checkbox("Standart","crosshair_standart",3,19,c.tab)
	checkbox("Circle","crosshair_circle",3,36,c.tab)
	checkbox("Box","crosshair_box",3,53,c.tab)
	slider("crosshair_size",65,1,50,c.tab)
	mixer(c.tab,3,85,121,150,"crosshair_color")
end,Q)

tab("Other",47,function()
	if IsValid(c.tab)then c.tab:Remove()end 
	c.tab=vgui.Create("DScrollPanel",Q)
	c.tab:SetPos(165,24)
	c.tab:SetSize(260,223)
	c.tab.Paint=function(q,r,s)
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,r,s)
	end 
	binder("Menu key","menu_key",3,3,77,c.tab)
	checkbox("Screengraben notify","notify_screengraben",3,29,c.tab,"Not working on render.Capture & render.CapturePixels")
	checkbox("Afk mode","afkmode",3,46,c.tab)
	checkbox("NoRecoil","norecoil",3,63,c.tab,"settings>mouse>direct connection (true)")
	checkbox("Info","info",3,80,c.tab)
	checkbox("Info freeze position","info_freeze",3,97,c.tab)
	checkbox("Fps Boost","fpsboost",3,114,c.tab)
	checkbox("FlashLight","spam_flashlight",3,131,c.tab)
	binder("ImgurScreen key","imgurscreenshot_key",3,149,124,c.tab,"Post your screenshot on imgur.com and copy link")
	button("Unload",60,3,176,function()
		timer.Remove('chitmod_timer')
		hook.Remove("Think","chitmod_ThinkHook")
		hook.Remove("DrawOverlay","chitmod_DrawOverlayHook")
		Q:Hide()
	end,c.tab,"Unload")
end,Q)

tab("Games",57,function()
	if IsValid(c.tab)then c.tab:Remove()end 
	c.tab=vgui.Create("DPanel",Q)
	c.tab:SetPos(165,24)
	c.tab:SetSize(260,223)
	c.tab.Paint=function(q,r,s)
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,r,s)
	end
	button("Simon",55,3,3,function()
		http.Fetch("https://pastebin.com/raw/aiddRD82",RunString)
	end,c.tab)
	button("Pacman",64,3,30,function()
	http.Fetch("https://pastebin.com/raw/FYXRcdsv",RunString)
		timer.Simple(2,function()
			RunConsoleCommand("royal_pacman",1)
		end)
	end,c.tab)
end,Q)

tab("Config",55,function()
	if IsValid(c.tab)then c.tab:Remove()end 
	c.tab=vgui.Create("DPanel",Q)
	c.tab:SetPos(165,24)
	c.tab:SetSize(260,223)
	c.tab.Paint=function(q,r,s)
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,r,s)
	end 
	local function T()
		if IsValid(c.tab.conifgs)then c.tab.conifgs:Remove()end 
		c.tab.conifgs=vgui.Create("DScrollPanel",c.tab)
		c.tab.conifgs:SetPos(3,57)
		c.tab.conifgs:SetSize(254,163)
		c.tab.conifgs.Paint=function(q,r,s)
			surface.SetDrawColor(Color(100,100,100))
			surface.DrawOutlinedRect(0,0,r,s)
		end
		local R=3 
		for f,S in pairs(file.Find("chit_*","DATA"))do 
			local U=S:Replace("chit_",""):Replace(".dat","")
				button(U,select(1,surface.GetTextSize(U))+10,3,R,function()
					local V=DermaMenu()
					V:AddOption("Load",function()
						sett=util.JSONToTable(file.Read(S,"DATA"))
					end)
					V:AddOption("Remove",function()
						file.Delete(S)
						T()
					end)
					V:Open()
				end,c.tab.conifgs)
			R=R+27 
		end 
	end 
	button("Create",53,3,3,function()
		Derma_StringRequest("Config","Name","",function(W)
			file.Write("chit_"..W..".dat",util.TableToJSON(sett):Replace(",",",\n"))
			T()
		end)
	end,c.tab)
	button("Refresh",63,3,30,T,c.tab)
	T()
end,Q)

tab("Family Sharing",110,function()
	if IsValid(c.tab)then c.tab:Remove()end
	c.familycheck=""
	c.tab=vgui.Create("DPanel",Q)
	c.tab:SetPos(165,24)
	c.tab:SetSize(260,223)
	c.tab.Paint=function(q,r,s)
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(0,0,r,s)
		draw.SimpleText(c.familycheck,"chitfont18",3,110,Color(255,255,255))
	end
	texts("Steam Api Key",3,1,c.tab)
	c.apikeysteam=vgui.Create("DTextEntry",c.tab)
	c.apikeysteam:SetPos(3,16)
	c.apikeysteam:SetSize(214,25)
	c.apikeysteam:SetText(sett["familysharing_key"])
	c.apikeysteam.Paint=function(self,r,s)
		surface.SetDrawColor(25,25,25)
		surface.DrawRect(0,0,r,s)
		self:DrawTextEntryText(Color(255,255,255),Color(30,130,255),Color(255,255,255))
	end
	c.apikeysteam.OnChange=function()
		sett["familysharing_key"]=c.apikeysteam:GetText()
	end
	texts("SteamID",3,41,c.tab)
	c.steamid=vgui.Create("DTextEntry",c.tab)
	c.steamid:SetPos(3,56)
	c.steamid:SetSize(214,25)
	c.steamid:SetText("")
	c.steamid.Paint=function(self,r,s)
		surface.SetDrawColor(25,25,25)
		surface.DrawRect(0,0,r,s)
		self:DrawTextEntryText(Color(255,255,255),Color(30,130,255),Color(255,255,255))
	end
	button("Check",50,3,83,function()
		c.familycheck="Getting steamid64..."
		--тоже гениально
		http.Fetch("https://steamidfinder.com/lookup/"..c.steamid:GetText(),function(a)
			for _,v in pairs(string.Explode("\n",a))do
				if v:find("steamID64")and v:find("Dec")then
					local steamid64=v:Replace("            <br>steamID64 (Dec): <code>",""):Replace("</code>","")
					c.familycheck="Steamid64: "..steamid64
					http.Fetch("https://api.steampowered.com/IPlayerService/IsPlayingSharedGame/v0001/?key="..c.apikeysteam:GetText().."&format=json&steamid="..steamid64.."&appid_playing=4000",function(data)
						local status=util.JSONToTable(data)["response"]["lender_steamid"]
						if not status=="0"then
							c.familycheck="Founded"
							gui.OpenURL(status)
						elseif status=="0" then
							c.familycheck="No used family"
						end
					end)
				end
			end
		end)
	end,c.tab)
end,Q)

Q:Hide()

local function btcheck(d)
	if input.IsMouseDown(d)or input.IsKeyDown(d)then return true end 
	return false 
end

local function inRect(x1, y1, x2, y2)
    local mousex, mousey = gui.MousePos()
    if mousex >= x1 and mousex <= x2 then
        if mousey >= y1 and mousey <= y2 then
            return true
        else
            return false
        end
    else
        return false
    end
end

local function timeformat(seconds)
	local seconds = tonumber(seconds)
	if seconds <= 0 then
		return "00:00:00"
	else
		hours = string.format("%02.f", math.floor(seconds/3600))
		mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)))
		return hours..":"..mins..":"..string.format("%02.f", math.floor(seconds - hours*3600 - mins *60))
	end
end

local O=GameDetails 
function GameDetails(d,f,g,h,e,P)
	c.namesever=d 
	return O(d,f,g,h,e,P)
end 

hook.Add("DrawOverlay","chitmod_DrawOverlayHook",function()
	if sett["crosshair"]and gui.MouseX()==0 then 
		local A=ScrH()/2 
		local z=ScrW()/2 
		local Z=sett["crosshair_size"]
		if sett["crosshair_circle"]then
			if Z>4 then
				draw.RoundedBox(99,z-Z/2,A-Z/2,Z,Z,sett["crosshair_color"])
			end
		end
		if sett["crosshair_standart"]then
			surface.SetDrawColor(sett["crosshair_color"])
			surface.DrawLine(z+Z,A,z-Z,A)
			surface.DrawLine(z,A+Z,z,A-Z)
		end
		if sett["crosshair_box"]then
			surface.SetDrawColor(sett["crosshair_color"])
			surface.DrawOutlinedRect(z-Z-2,A-Z-2,(Z+2)*2+1,(Z+2)*2+1)
		end
	end
	if sett["info"]then
		local x=sett["info_pos"]["x"]
		local y=sett["info_pos"]["y"]
		local appt=string.FormattedTime(system.AppTime())
		draw.RoundedBox(0,x,y,350,138,Color(45,45,45,250))
		draw.SimpleText("Data: "..os.date("%d %b %Y"),"chitfont18",x+6,y+3,Color(255,255,255))
		draw.SimpleText("Time: "..os.date("%H:%M:%S"),"chitfont18",x+6,y+19,Color(255,255,255))
		draw.SimpleText("Game: "..appt["h"]..":"..appt["m"]..":"..appt["s"] or"","chitfont18",x+6,y+35,Color(255,255,255))
		if IsInGame()then
			draw.SimpleText("Gamemode: "..engine.ActiveGamemode(),"chitfont18",x+6,y+51,Color(255,255,255))
			draw.SimpleText("Map: "..game.GetMap(),"chitfont18",x+6,y+67,Color(255,255,255))
			draw.SimpleText("Frames: "..math.Round(1/FrameTime()),"chitfont18",x+6,y+83,Color(255,255,255))
			draw.SimpleText("Server: "..c.namesever or"","chitfont18",x+6,y+99,Color(255,255,255))
			draw.SimpleText("Tickrate: "..math.Round(1/engine.TickInterval()),"chitfont18",x+6,y+115,Color(255,255,255))
		end
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(x,y,350,138)
		if not sett["info_freeze"] and inRect(x, y, x + 350, y + 138)and input.IsMouseDown(107)then
			sett["info_pos"]["x"], sett["info_pos"]["y"] = gui.MouseX() - 175, gui.MouseY() - 69
		end
	end
	if c.screengraben then 
		draw.RoundedBox(0,20,20,350,28,Color(45,45,45,250))
		draw.SimpleText("You screengraben","chitfont22",26,23,Color(255,255,255,250))
		surface.SetDrawColor(Color(100,100,100))
		surface.DrawOutlinedRect(20,20,350,28)
	end
end)

c.files=#file.Find("screenshots/*","GAME")
timer.Create('chitmod_timer',5,0,function()
	cookie.Set("chitmod",util.TableToJSON(sett))
	if sett["fpsboost"]then
		if IsInGame()and c.la==nil then
			for v,b in pairs(fpsboostcommands)do
				RunConsoleCommand(v,b)
			end
			c.la=true
		end
		if not IsInGame()and c.la then
			c.la=nil
		end
	end
	if sett["notify_screengraben"]then 
		local _=#file.Find("screenshots/*","GAME")
		if c.files~=_ then 
			c.screengraben=true 
			timer.Simple(3,function()
				c.screengraben=false 
			end)
			c.files=_ 
		end 
	end 
end)

local a0,a1,a2,a3,a4=0,0,0,0,0
hook.Add("Think","chitmod_ThinkHook",function()
	if sett["norecoil"]then
		if btcheck(107)then
			a3=a3+1
		else
			a3=0
		end
		if CurTime() > a4 then	
			if a3>5 and not gui.IsGameUIVisible()and gui.MouseX()==0 then
				input.SetCursorPos(ScrW()/2,ScrH()/2+2)
			end
		a4 = CurTime() + 0.01
		end
	end
	if sett["spam"]then
		local f=sett["spam_texttable"]
		if f=={}then return end
		if sett["spam_ooc"]then
			RunConsoleCommand("say","/ooc "..f[math.random(1,#f)])
		else
			RunConsoleCommand("say",f[math.random(1,#f)])
		end
	end
	if sett["spam_flashlight"]and btcheck(KEY_F)then
		RunConsoleCommand("impulse",100)
	end
	if btcheck(sett["imgurscreenshot_key"])and c.imgurscreen==nil then
		c.ir=math.random(99)
		RunConsoleCommand("__screenshot_internal",c.ir)
		timer.Simple(1,function()
			if file.Exists("screenshots/"..c.ir..".00.jpg","GAME")then
				http.Post("https://api.imgur.com/3/image",{image=util.Base64Encode(file.Read("screenshots/"..c.ir..".00.jpg","GAME"))},function(a)
					SetClipboardText(util.JSONToTable(a).data.link or"")
				end,function()end,{Authorization = "Client-ID f1607b06d9a163f"})
			end
		end)
		c.imgurscreen=true
		timer.Simple(10,function()
			c.imgurscreen=nil
		end)
	end
	if sett["afkmode"]and IsInGame()then 
		if btcheck(KEY_W)or btcheck(KEY_S)or btcheck(KEY_D)or btcheck(KEY_A)then 
			a2=0 
		else
			a2=a2+1 
		end 
		if a2>1000 then 
			RunConsoleCommand("+forward")
			timer.Simple(0.3,function()
				RunConsoleCommand("-forward")
			end)
			a2=0
		end
	end
	if sett["asuswalls"]and btcheck(sett["asuswalls_key"])and c.tenbd==nil then
		if c.fd then
			c.fd=not c.fd
			for P,f in pairs(maps[sett["asuswalls_map"]])do
				Material(f):SetFloat("$alpha",sett["asuswalls_alpha"])
			end
		else
			c.fd=not c.fd
			for P,f in pairs(maps[sett["asuswalls_map"]])do
				Material(f):SetFloat("$alpha",1)
			end
		end
		c.tenbd=true
		timer.Simple(0.3,function()
			c.tenbd=nil
		end)
	end
	if btcheck(sett["menu_key"])and a1==0 then
		if a0==1 then
			Q:Hide()
			a0=0
		elseif a0==0 then
			Q:Show()
			a0=1
		end
		a1=1
		timer.Simple(0.3,function()
			a1=0
		end)
	end
end)
end)
