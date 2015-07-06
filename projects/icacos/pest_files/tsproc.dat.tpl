START SETTINGS
CONTEXT pest_prep
#CONTEXT model_run
#CONTEXT all
DATE_FORMAT mm/dd/yyyy
END SETTINGS
#
##########################################
# Read time series from the statvar file #
##########################################
START GET_MUL_SERIES_STATVAR
CONTEXT all
FILE webmod.statvar
DATE_1 1/1/1985
TIME_1 00:00:00
DATE_2 12/31/2014
TIME_2 00:00:00
VARIABLE_NAME ch_outlet_pH
LOCATION_ID 1
NEW_SERIES_NAME ph_s
VARIABLE_NAME ch_outlet_tempC
LOCATION_ID 1
NEW_SERIES_NAME tempc_s
VARIABLE_NAME ch_outlet_mgL
LOCATION_ID 1
NEW_SERIES_NAME Ca_s
VARIABLE_NAME ch_outlet_mgL
LOCATION_ID 2
NEW_SERIES_NAME Mg_s
VARIABLE_NAME ch_outlet_mgL
LOCATION_ID 3
NEW_SERIES_NAME Na_s
VARIABLE_NAME ch_outlet_mgL
LOCATION_ID 4
NEW_SERIES_NAME K_s
VARIABLE_NAME ch_outlet_mgL
LOCATION_ID 5
NEW_SERIES_NAME Amm_s
VARIABLE_NAME ch_outlet_mgL
LOCATION_ID 6
NEW_SERIES_NAME Alk_s
VARIABLE_NAME ch_outlet_mgL
LOCATION_ID 7
NEW_SERIES_NAME Cl_s
VARIABLE_NAME ch_outlet_mgL
LOCATION_ID 8
NEW_SERIES_NAME S_s
VARIABLE_NAME ch_outlet_mgL
LOCATION_ID 9
NEW_SERIES_NAME NO3_s
VARIABLE_NAME ch_outlet_mgL
LOCATION_ID 10
NEW_SERIES_NAME Si_s
VARIABLE_NAME ch_outlet_permil
LOCATION_ID 11
NEW_SERIES_NAME 18O_s
VARIABLE_NAME qbasincfs
LOCATION_ID 1
NEW_SERIES_NAME q_cfs_s
END GET_MUL_SERIES_STATVAR
#
#####################################
# Read time series from an ssf file #
#####################################
START GET_SERIES_SSF
CONTEXT all
FILE @PROJECT_DIR@webmod.hydro.obs.ssf
SITE q_cfs
NEW_SERIES_NAME q_cfs_o
DATE_1 1/1/1985
TIME_1 00:00:00
DATE_2 12/31/2014
TIME_2 00:00:00
END GET_SERIES_SSF
#
#################################################
# Read observed concentrations from an ssf file #
#################################################
START GET_MUL_SERIES_SSF
CONTEXT all
FILE @PROJECT_DIR@webmod.chem.obs.ssf
DATE_1 1/1/1985
TIME_1 00:00:00
DATE_2 12/31/2014
TIME_2 00:00:00
SITE tempc_obs
NEW_SERIES_NAME tempc_o
SITE pH_obs
NEW_SERIES_NAME ph_o
SITE Ca_mgL
NEW_SERIES_NAME Ca_o
SITE Mg_mgL
NEW_SERIES_NAME Mg_o
SITE Na_mgL
NEW_SERIES_NAME Na_o
SITE K_mgL
NEW_SERIES_NAME K_o
SITE AmmN_mgL
NEW_SERIES_NAME Amm_o
SITE Alk_mgL
NEW_SERIES_NAME Alk_o
SITE Cl_mgL
NEW_SERIES_NAME Cl_o
SITE SO4_mgL
NEW_SERIES_NAME S_o
SITE N(5)_mgL
NEW_SERIES_NAME NO3_o
SITE SiO2_mgL
NEW_SERIES_NAME Si_o
SITE Doc_mgL
NEW_SERIES_NAME Doc_o
SITE SAR
NEW_SERIES_NAME SAR_o
SITE CO2_mgL
NEW_SERIES_NAME CO2_o
SITE PO4_mgL
NEW_SERIES_NAME PO4_o
SITE Del_18O
NEW_SERIES_NAME 18O_o
END GET_MUL_SERIES_SSF
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME ph_s
TB_SERIES_NAME ph_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME ph_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME ph_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME tempc_s
TB_SERIES_NAME tempc_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME tempc_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME tempc_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME Ca_s
TB_SERIES_NAME Ca_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Ca_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Ca_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME Mg_s
TB_SERIES_NAME Mg_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Mg_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Mg_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME Na_s
TB_SERIES_NAME Na_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Na_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Na_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME K_s
TB_SERIES_NAME K_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME K_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME K_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME Amm_s
TB_SERIES_NAME Amm_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Amm_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Amm_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME Alk_s
TB_SERIES_NAME Alk_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Alk_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Alk_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME Cl_s
TB_SERIES_NAME Cl_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Cl_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Cl_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME S_s
TB_SERIES_NAME S_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME S_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME S_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME NO3_s
TB_SERIES_NAME NO3_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME NO3_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME NO3_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME Si_s
TB_SERIES_NAME Si_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Si_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Si_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
##################################
## Resample the simulated series #
##################################
#START NEW_TIME_BASE
#CONTEXT all
#SERIES_NAME Doc_s
#TB_SERIES_NAME Doc_o
#NEW_SERIES_NAME temp
#END NEW_TIME_BASE
##
#START ERASE_ENTITY
#CONTEXT all
#SERIES_NAME Doc_s
#END ERASE_ENTITY
##
#START SERIES_EQUATION
#CONTEXT all
#NEW_SERIES_NAME Doc_s
#EQUATION temp
#END SERIES_EQUATION
##
#START ERASE_ENTITY
#CONTEXT all
#SERIES_NAME temp
#END ERASE_ENTITY
##
##################################
## Resample the simulated series #
##################################
#START NEW_TIME_BASE
#CONTEXT all
#SERIES_NAME SAR_s
#TB_SERIES_NAME SAR_o
#NEW_SERIES_NAME temp
#END NEW_TIME_BASE
##
#START ERASE_ENTITY
#CONTEXT all
#SERIES_NAME SAR_s
#END ERASE_ENTITY
##
#START SERIES_EQUATION
#CONTEXT all
#NEW_SERIES_NAME SAR_s
#EQUATION temp
#END SERIES_EQUATION
##
#START ERASE_ENTITY
#CONTEXT all
#SERIES_NAME temp
#END ERASE_ENTITY
##
##################################
## Resample the simulated series #
##################################
#START NEW_TIME_BASE
#CONTEXT all
#SERIES_NAME CO2_s
#TB_SERIES_NAME CO2_o
#NEW_SERIES_NAME temp
#END NEW_TIME_BASE
##
#START ERASE_ENTITY
#CONTEXT all
#SERIES_NAME CO2_s
#END ERASE_ENTITY
##
#START SERIES_EQUATION
#CONTEXT all
#NEW_SERIES_NAME CO2_s
#EQUATION temp
#END SERIES_EQUATION
##
#START ERASE_ENTITY
#CONTEXT all
#SERIES_NAME temp
#END ERASE_ENTITY
##
##################################
## Resample the simulated series #
##################################
#START NEW_TIME_BASE
#CONTEXT all
#SERIES_NAME PO4_s
#TB_SERIES_NAME PO4_o
#NEW_SERIES_NAME temp
#END NEW_TIME_BASE
##
#START ERASE_ENTITY
#CONTEXT all
#SERIES_NAME PO4_s
#END ERASE_ENTITY
##
#START SERIES_EQUATION
#CONTEXT all
#NEW_SERIES_NAME PO4_s
#EQUATION temp
#END SERIES_EQUATION
##
#START ERASE_ENTITY
#CONTEXT all
#SERIES_NAME temp
#END ERASE_ENTITY
##
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME 18O_s
TB_SERIES_NAME 18O_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME 18O_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME 18O_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME q_cfs_s
TB_SERIES_NAME q_cfs_o
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME q_cfs_s
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME q_cfs_s
EQUATION temp
END SERIES_EQUATION
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME temp
END ERASE_ENTITY
#
#######################################
# Model results are written to a file #
#######################################
START LIST_OUTPUT
CONTEXT all
FILE tsproc.sim.out
SERIES_FORMAT long
SERIES_NAME ph_s
SERIES_NAME tempc_s
SERIES_NAME Ca_s
SERIES_NAME Mg_s
SERIES_NAME Na_s
SERIES_NAME K_s
SERIES_NAME Amm_s
SERIES_NAME Alk_s
SERIES_NAME Cl_s
SERIES_NAME S_s
SERIES_NAME NO3_s
SERIES_NAME Si_s
#SERIES_NAME Doc_s
#SERIES_NAME SAR_s
#SERIES_NAME CO2_s
#SERIES_NAME PO4_s
SERIES_NAME 18O_s
SERIES_NAME q_cfs_s
END LIST_OUTPUT_BLOCK
#
####################
# Write pest files #
####################
START WRITE_PEST_FILES
CONTEXT        pest_prep
NEW_PEST_CONTROL_FILE @PROJECT_DIR@webmod.pst
TRUNCATED_SVD 5e-7
TEMPLATE_FILE @PROJECT_DIR@par2par.dat.tpl
MODEL_INPUT_FILE  par2par.dat
NEW_INSTRUCTION_FILE tsproc.sim.out.ins
#
OBSERVATION_SERIES_NAME ph_o
MODEL_SERIES_NAME ph_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 0.153846154
#
OBSERVATION_SERIES_NAME tempc_o
MODEL_SERIES_NAME tempc_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 1.23572
#
OBSERVATION_SERIES_NAME Ca_o
MODEL_SERIES_NAME Ca_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 0.4 
#
OBSERVATION_SERIES_NAME Mg_o
MODEL_SERIES_NAME Mg_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 1.25
#
OBSERVATION_SERIES_NAME Na_o
MODEL_SERIES_NAME Na_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 0.2
#
OBSERVATION_SERIES_NAME K_o
MODEL_SERIES_NAME K_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 1.4
#
OBSERVATION_SERIES_NAME Amm_o
MODEL_SERIES_NAME Amm_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 1
#
OBSERVATION_SERIES_NAME Alk_o
MODEL_SERIES_NAME Alk_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 0.12
#
OBSERVATION_SERIES_NAME Cl_o
MODEL_SERIES_NAME Cl_s
#SERIES_WEIGHTS_EQUATION 0.0
SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 0.2
#
OBSERVATION_SERIES_NAME S_o
MODEL_SERIES_NAME S_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 0.7
#
OBSERVATION_SERIES_NAME NO3_o
MODEL_SERIES_NAME NO3_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 1
#
OBSERVATION_SERIES_NAME Si_o
MODEL_SERIES_NAME Si_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 0.1
#
#OBSERVATION_SERIES_NAME Doc_o
#MODEL_SERIES_NAME Doc_s
#SERIES_WEIGHTS_EQUATION 1.0
##SERIES_WEIGHTS_EQUATION 1.9
##
#OBSERVATION_SERIES_NAME SAR_o
#MODEL_SERIES_NAME SAR_s
#SERIES_WEIGHTS_EQUATION 1.0
##SERIES_WEIGHTS_EQUATION 1.9
##
#OBSERVATION_SERIES_NAME CO2_o
#MODEL_SERIES_NAME CO2_s
#SERIES_WEIGHTS_EQUATION 1.0
##SERIES_WEIGHTS_EQUATION 1.9
##
#OBSERVATION_SERIES_NAME PO4_o
#MODEL_SERIES_NAME PO4_s
#SERIES_WEIGHTS_EQUATION 1.0
##SERIES_WEIGHTS_EQUATION 1.9
##
OBSERVATION_SERIES_NAME 18O_o
MODEL_SERIES_NAME 18O_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 4.79949
#
OBSERVATION_SERIES_NAME q_cfs_o
MODEL_SERIES_NAME q_cfs_s
SERIES_WEIGHTS_EQUATION 0.0
#SERIES_WEIGHTS_EQUATION 1
#SERIES_WEIGHTS_EQUATION 1.023355E-02
#SERIES_WEIGHTS_EQUATION 15.16438356/@_abs_value+0.630137
#SERIES_WEIGHTS_MIN_MAX 1.0 4.0
#
PARAMETER_DATA_FILE @PROJECT_DIR@pest_params.txt
PARAMETER_GROUP_FILE @PROJECT_DIR@pest_groups.txt
MODEL_COMMAND_LINE @PROJECT_DIR@pest_webmod.bat
END WRITE_PEST_FILES
