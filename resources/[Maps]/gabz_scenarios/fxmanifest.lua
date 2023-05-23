fx_version 'adamant'
game 'gta5'

this_is_a_map 'yes'

data_file "INTERIOR_PROXY_ORDER_FILE" "interiorproxies.meta"

files '*/*/interiorproxies.meta'


file 'stream/pillbox_hospital/gabz_timecycle_mods_1.xml'

data_file 'TIMECYCLEMOD_FILE' 'stream/pillbox_hospital/gabz_timecycle_mods_1.xml'

data_file 'DLC_ITYP_REQUEST' 'mosleynutt//int_corp23.ytyp'

data_file "SCENARIO_POINTS_OVERRIDE_PSO_FILE" "sp_manifest.ymt"

client_script {
  "main.lua"
}
