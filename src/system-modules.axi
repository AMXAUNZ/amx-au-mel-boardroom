PROGRAM_NAME='system-modules'

#if_not_defined __SYSTEM_MODULES__
#define __SYSTEM_MODULES__

#include 'system-devices'
#include 'system-variables'

/*
 * --------------------
 * Module Definitions
 * --------------------
 */

define_module

// Mitsubishi LDT-551V monitors in boardroom
define_module 'Mitsubishi_LDT551V_Comm_dr1_0_0' NEC_Left(vdvMonitorLeft, dvMonitorLeft)
define_module 'Mitsubishi_LDT551V_Comm_dr1_0_0' NEC_Right(vdvMonitorRight, dvMonitorRight)

'drag-and-drop' dragAndDropMod (vdvDragAndDropTpTable, dvTpTableDragAndDrop)

'multi-preview-dvx' multiPreviewDvx (vdvMultiPreview,
                                     dvDvxVidOutMultiPreview, 
                                     dvTpTableVideo, 
                                     btnsVideoSnapshotPreviews,          // address codes
                                     btnAdrsVideoSnapshotPreviews,       // address codes
                                     btnAdrsVideoInputLabels,            // address codes
                                     btnAdrsVideoOutputSnapshotPreviews, // address codes
									 btnAdrsVideoOutputLabels,
                                     btnAdrVideoPreviewLoadingMessage,   // address code
                                     btnLoadingBarMultiState,            // channel code
                                     btnAdrLoadingBar,                   // address code
                                     btnAdrVideoPreviewWindow,           // address code
                                     btnExitVideoPreview,                // channel code
                                     popupNameVideoPreview,
                                     imageFileNameNoVideo)

#end_if