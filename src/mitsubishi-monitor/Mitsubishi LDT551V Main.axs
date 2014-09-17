(*********************************************************************)
(*  AMX Corporation                                                  *)
(*  Copyright (c) 2004-2006 AMX Corporation. All rights reserved.    *)
(*********************************************************************)
(* Copyright Notice :                                                *)
(* Copyright, AMX, Inc., 2004-2007                                   *)
(*    Private, proprietary information, the sole property of AMX.    *)
(*    The contents, ideas, and concepts expressed herein are not to  *)
(*    be disclosed except within the confines of a confidential      *)
(*    relationship and only then on a need to know basis.            *)
(*********************************************************************)
PROGRAM_NAME = 'Mitsubishi LDT551V Monitor Main' 
(***********************************************************)
(* System Type : NetLinx                                   *)
(* Creation Date: 7/29/2008 3:24:49 PM                    *)
(***********************************************************)
(* REV HISTORY:                                            *)
(***********************************************************)
#WARN 'Verify that the PROPERTY-Poll_Time has been set to the desired setting. Default 10000'
#WARN 'Verify that the PROPERTY-IP_Address has been set to the desired setting.'
#WARN 'Verify that the PROPERTY-Port has been set to the desired setting - Default 63007.'

(***********************************************************)
(*          DEVICE NUMBER DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_DEVICE

vdvMitsubishiLDT551V = 41001:1:0  	// Virtual duet device
vdvMitsubishiLDT551V2 = 41001:2:0  	// Virtual duet device
dvMitsubishiLDT551V = 5001:1:0 		// Physical serial connection
dvMitsubishiLDT551VTp = 10001:1:0 	// Touch panel
//dvMitsubishiLDT551V = 0:3:0 //Ethernet control. 
(***********************************************************)
(*               CONSTANT DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_CONSTANT


(***********************************************************)
(*               VARIABLE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_VARIABLE

DEV vdvDev[] = {vdvMitsubishiLDT551V}
DEV vdvDev2[] = {vdvMitsubishiLDT551V,vdvMitsubishiLDT551V2}
// ----------------------------------------------------------
// CURRENT DEVICE NUMBER ON TP NAVIGATION BAR
INTEGER nMitsubishiLDT551V = 1

// ----------------------------------------------------------
// DEFINE THE PAGES THAT YOUR COMPONENTS ARE USING IN THE 
// SUB NAVIGATION BAR HERE
INTEGER nPowerPages[] = { 4 }
INTEGER nSourceSelectPages[] = { 6 }
INTEGER nLampPages[] = { 2 }
INTEGER nVolumePages[] = { 7 }
INTEGER nDisplayPages[] = { 3,4,5 }
INTEGER nModulePages[] = { 11 }
(***********************************************************)
(*                STARTUP CODE GOES BELOW                  *)
(***********************************************************)
DEFINE_START


// ----------------------------------------------------------
// DEVICE MODULE GROUPS SHOULD ALL HAVE THE SAME DEVICE NUMBER
DEFINE_MODULE 'Mitsubishi LDT551V ModuleComponent' module(vdvDev, dvMitsubishiLDT551VTp, nMitsubishiLDT551V, nModulePages)
DEFINE_MODULE 'Mitsubishi LDT551V SourceSelectComponent' sourceselect(vdvDev2, dvMitsubishiLDT551VTp, nMitsubishiLDT551V, nSourceSelectPages)
DEFINE_MODULE 'Mitsubishi LDT551V LampComponent' lamp(vdvDev, dvMitsubishiLDT551VTp, nMitsubishiLDT551V, nLampPages)
DEFINE_MODULE 'Mitsubishi LDT551V VolumeComponent' lamp(vdvDev, dvMitsubishiLDT551VTp, nMitsubishiLDT551V, nVolumePages)
DEFINE_MODULE 'Mitsubishi LDT551V DisplayComponent' lamp(vdvDev, dvMitsubishiLDT551VTp, nMitsubishiLDT551V, nDisplayPages)

// Define your communications module here like so:
DEFINE_MODULE 'Mitsubishi_LDT551V_Comm_dr1_0_0' comm(vdvMitsubishiLDT551V, dvMitsubishiLDT551V)

(***********************************************************)
(*                THE EVENTS GO BELOW                      *)
(***********************************************************)
DEFINE_EVENT

DATA_EVENT[vdvMitsubishiLDT551V]
{
    ONLINE:
    {       
	//send_command vdvMitsubishiLDT551V, 'PROPERTY-Poll_Time,10000'
	//SEND_COMMAND vdvMitsubishiLDT551V,'PROPERTY-IP_Address,10.0.0.2'
	//SEND_COMMAND vdvMitsubishiLDT551V,'PROPERTY-Port,63007'
	//send_command vdvMitsubishiLDT551V, 'REINIT'
    }
}
(***********************************************************)
(*            THE ACTUAL PROGRAM GOES BELOW                *)
(***********************************************************)
DEFINE_PROGRAM

(***********************************************************)
(*                     END OF PROGRAM                      *)
(*        DO NOT PUT ANY CODE BELOW THIS COMMENT           *)
(***********************************************************)

