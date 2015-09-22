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
DATE_1 10/01/1983
TIME_1 00:00:00
DATE_2 09/30/2012  
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
VARIABLE_NAME ch_outlet_mgm2
LOCATION_ID 1
NEW_SERIES_NAME Ca_sl
VARIABLE_NAME ch_outlet_mgm2
LOCATION_ID 2
NEW_SERIES_NAME Mg_sl
VARIABLE_NAME ch_outlet_mgm2
LOCATION_ID 3
NEW_SERIES_NAME Na_sl
VARIABLE_NAME ch_outlet_mgm2
LOCATION_ID 4
NEW_SERIES_NAME K_sl
VARIABLE_NAME ch_outlet_mgm2
LOCATION_ID 5
NEW_SERIES_NAME Amm_sl
VARIABLE_NAME ch_outlet_mgm2
LOCATION_ID 6
NEW_SERIES_NAME Alk_sl
VARIABLE_NAME ch_outlet_mgm2
LOCATION_ID 7
NEW_SERIES_NAME Cl_sl
VARIABLE_NAME ch_outlet_mgm2
LOCATION_ID 8
NEW_SERIES_NAME S_sl
VARIABLE_NAME ch_outlet_mgm2
LOCATION_ID 9
NEW_SERIES_NAME NO3_sl
VARIABLE_NAME ch_outlet_mgm2
LOCATION_ID 10
NEW_SERIES_NAME Si_sl
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
DATE_1 10/01/1983
TIME_1 00:00:00
DATE_2 09/30/2012  
TIME_2 00:00:00
END GET_SERIES_SSF
#
#################################################
# Read observed temp, pH, concentrations and    #
# loads from an ssf file                        #
#################################################
START GET_MUL_SERIES_SSF
CONTEXT all
FILE @PROJECT_DIR@webmod.chem.obs.ssf
DATE_1 10/01/1983
TIME_1 00:00:00
DATE_2 09/30/2012  
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
SITE Amm_mgL
NEW_SERIES_NAME Amm_o
SITE Alk_mgL
NEW_SERIES_NAME Alk_o
SITE Cl_mgL
NEW_SERIES_NAME Cl_o
SITE S_mgL
NEW_SERIES_NAME S_o
SITE N(5)_mgL
NEW_SERIES_NAME NO3_o
SITE Si_mgL
NEW_SERIES_NAME Si_o
SITE [180]_obs
NEW_SERIES_NAME 18O_o
SITE Ca_mgm2
NEW_SERIES_NAME Ca_ol
SITE Mg_mgm2
NEW_SERIES_NAME Mg_ol
SITE Na_mgm2
NEW_SERIES_NAME Na_ol
SITE K_mgm2
NEW_SERIES_NAME K_ol
SITE Amm_mgm2
NEW_SERIES_NAME Amm_ol
SITE Alk_mgm2
NEW_SERIES_NAME Alk_ol
SITE Cl_mgm2
NEW_SERIES_NAME Cl_ol
SITE S_mgm2
NEW_SERIES_NAME S_ol
SITE N(5)_mgm2
NEW_SERIES_NAME NO3_ol
SITE Si_mgm2
NEW_SERIES_NAME Si_ol
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
#################################
# Resample the simulated series #
#################################
START NEW_TIME_BASE
CONTEXT all
SERIES_NAME Ca_sl
TB_SERIES_NAME Ca_ol
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Ca_sl
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Ca_sl
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
SERIES_NAME Mg_sl
TB_SERIES_NAME Mg_ol
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Mg_sl
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Mg_sl
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
SERIES_NAME Na_sl
TB_SERIES_NAME Na_ol
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Na_sl
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Na_sl
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
SERIES_NAME K_sl
TB_SERIES_NAME K_ol
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME K_sl
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME K_sl
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
SERIES_NAME Amm_sl
TB_SERIES_NAME Amm_ol
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Amm_sl
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Amm_sl
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
SERIES_NAME Alk_sl
TB_SERIES_NAME Alk_ol
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Alk_sl
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Alk_sl
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
SERIES_NAME Cl_sl
TB_SERIES_NAME Cl_ol
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Cl_sl
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Cl_sl
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
SERIES_NAME S_sl
TB_SERIES_NAME S_ol
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME S_sl
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME S_sl
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
SERIES_NAME NO3_sl
TB_SERIES_NAME NO3_ol
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME NO3_sl
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME NO3_sl
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
SERIES_NAME Si_sl
TB_SERIES_NAME Si_ol
NEW_SERIES_NAME temp
END NEW_TIME_BASE
#
START ERASE_ENTITY
CONTEXT all
SERIES_NAME Si_sl
END ERASE_ENTITY
#
START SERIES_EQUATION
CONTEXT all
NEW_SERIES_NAME Si_sl
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
SERIES_NAME 18O_s
SERIES_NAME q_cfs_s
SERIES_NAME Ca_sl
SERIES_NAME Mg_sl
SERIES_NAME Na_sl
SERIES_NAME K_sl
SERIES_NAME Amm_sl
SERIES_NAME Alk_sl
SERIES_NAME Cl_sl
SERIES_NAME S_sl
SERIES_NAME NO3_sl
SERIES_NAME Si_sl
END LIST_OUTPUT_BLOCK
#
####################
# Write pest files #
####################
START WRITE_PEST_FILES
CONTEXT pest_prep
NEW_PEST_CONTROL_FILE @PROJECT_DIR@webmod.pst
TRUNCATED_SVD 5e-7
TEMPLATE_FILE @PROJECT_DIR@par2par.dat.tpl
MODEL_INPUT_FILE  par2par.dat
NEW_INSTRUCTION_FILE tsproc.sim.out.ins
#
OBSERVATION_SERIES_NAME ph_o
MODEL_SERIES_NAME ph_s
SERIES_WEIGHTS_EQUATION 1.2
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME tempc_o
MODEL_SERIES_NAME tempc_s
SERIES_WEIGHTS_EQUATION 0.548
#SERIES_WEIGHTS_EQUATION 0.0
#
# Concentrations
#
OBSERVATION_SERIES_NAME Ca_o
MODEL_SERIES_NAME Ca_s
SERIES_WEIGHTS_EQUATION 0.457409
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Mg_o
MODEL_SERIES_NAME Mg_s
SERIES_WEIGHTS_EQUATION 5.08878
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Na_o
MODEL_SERIES_NAME Na_s
SERIES_WEIGHTS_EQUATION 0.440612
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME K_o
MODEL_SERIES_NAME K_s
SERIES_WEIGHTS_EQUATION 2.50451
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Amm_o
MODEL_SERIES_NAME Amm_s
SERIES_WEIGHTS_EQUATION 26.7427
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Alk_o
MODEL_SERIES_NAME Alk_s
SERIES_WEIGHTS_EQUATION 2.0E-01
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Cl_o
MODEL_SERIES_NAME Cl_s
SERIES_WEIGHTS_EQUATION 6.64051
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME S_o
MODEL_SERIES_NAME S_s
SERIES_WEIGHTS_EQUATION 0.614276
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME NO3_o
MODEL_SERIES_NAME NO3_s
SERIES_WEIGHTS_EQUATION 2.88497
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Si_o
MODEL_SERIES_NAME Si_s
SERIES_WEIGHTS_EQUATION 0.158832
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME 18O_o
MODEL_SERIES_NAME 18O_s
SERIES_WEIGHTS_EQUATION 0.287494
#SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME q_cfs_o
MODEL_SERIES_NAME q_cfs_s
#SERIES_WEIGHTS_EQUATION 0.004952927/@_abs_value+0.066699725
#SERIES_WEIGHTS_MIN_MAX 0.067337012 0.269348049
SERIES_WEIGHTS_EQUATION 0.12434
#SERIES_WEIGHTS_EQUATION 1.0
#SERIES_WEIGHTS_EQUATION 0.0

#
# Loads
#
OBSERVATION_SERIES_NAME Ca_ol
MODEL_SERIES_NAME Ca_sl
#SERIES_WEIGHTS_EQUATION 5.87E-02
SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Mg_ol
MODEL_SERIES_NAME Mg_sl
#SERIES_WEIGHTS_EQUATION 0.379671
SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Na_ol
MODEL_SERIES_NAME Na_sl
#SERIES_WEIGHTS_EQUATION 0.18332
SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME K_ol
MODEL_SERIES_NAME K_sl
#SERIES_WEIGHTS_EQUATION 0.464614
SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Amm_ol
MODEL_SERIES_NAME Amm_sl
#SERIES_WEIGHTS_EQUATION 0.58153
SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Alk_ol
MODEL_SERIES_NAME Alk_sl
#SERIES_WEIGHTS_EQUATION 3.55E-02
SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Cl_ol
MODEL_SERIES_NAME Cl_sl
#SERIES_WEIGHTS_EQUATION 16.3
#SERIES_WEIGHTS_EQUATION 0.008986707/@_abs_value+3.892763518
#SERIES_WEIGHTS_MIN_MAX 3.9 5.8
#SERIES_WEIGHTS_EQUATION 1.05562
SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME S_ol
MODEL_SERIES_NAME S_sl
#SERIES_WEIGHTS_EQUATION 6.76E-02
SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME NO3_ol
MODEL_SERIES_NAME NO3_sl
#SERIES_WEIGHTS_EQUATION 0.266581
SERIES_WEIGHTS_EQUATION 0.0
#
OBSERVATION_SERIES_NAME Si_ol
MODEL_SERIES_NAME Si_sl
#SERIES_WEIGHTS_EQUATION 2.95E-02
SERIES_WEIGHTS_EQUATION 0.0
#
PARAMETER_DATA_FILE @PROJECT_DIR@pest_params.txt
PARAMETER_GROUP_FILE @PROJECT_DIR@pest_groups.txt
MODEL_COMMAND_LINE @PROJECT_DIR@pest_webmod.bat
END WRITE_PEST_FILES
